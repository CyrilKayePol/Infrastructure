class HistoricalDataController < ApplicationController
	before_filter :confirm_logged_in, :only => [:historical_data]
	
	def add_historical_data
		if params[:data] != nil
			@data = HistoricalDatum.create!(historical_datum_params)
			redirect_to '/add_historical_data'
		else
			@data = HistoricalDatum.all
		end
	end
	
	def historical_data
		if params[:sorter].present?
			if params[:sorter] == 'name'
				@historical_data = HistoricalDatum.order(name: :asc)
			elsif params[:sorter] == 'date'
				@historical_data = HistoricalDatum.order(date: :asc)
			end
		else
			@historical_data = HistoricalDatum.all
		end
    end
	
	def show_historical_data
		@bcom = BuildingComponent.find(params[:id])
		session[:current_component] = params[:id]
		@building_history = @bcom.historical_data
	
	end
	
	def add_historical_event
		@pangalan_gusali = params[:id]
		
		@building_events = HistoricalDatum.new
	
	end
	
	def create_event
		@c = BuildingComponent.find(session[:current_component])
		h = @c.historical_data.create(historical_datum_params)
		h.update(name: @c.building_name, component_name: @c.name)
		
		@news = News.create!(:news => "[#{h.name}] new event: #{h.event}")
		redirect_to show_historical_data_path(id: session[:current_component])
	end
	
	def delete_historical_event
		redirect_to confirm_delete_event_path(id: params[:id])
		#@delete_event = HistoricalDatum.find_by(id: params[:id])
		#HistoricalDatum.delete(params[:id])
		
		#redirect_to show_historical_data_path(id: session[:current_component])
	end
	
	def edit_historical_event
		
		@edit_event_id = params[:id]
		session[:current_event_id] = params[:id]
		@b_edit = HistoricalDatum.where(id: @edit_event_id) 
		@building_edit = HistoricalDatum.find_by(id: @edit_event_id) 
	end
	
	  def confirm_delete_event
		@event_id = params[:id]
		@delete_event = HistoricalDatum.find_by(id: @event_id)
		@name_building = @delete_event.name
		session[:event_id] = @event_id
		session[:event_name] = @name_building
	  end
	  
	  def check_delete_event
		if session[:event_name].eql? params[:building_name]
			@compo = HistoricalDatum.find_by(id: session[:event_id])
			@compo.delete
			redirect_to show_historical_data_path(id: session[:current_component])
		else
			redirect_to confirm_delete_event_path(id: session[:event_id])
		end
	  end	
	
	def update_historical_event
		bye_event = HistoricalDatum.where(:id => session[:current_event_id])
		HistoricalDatum.delete(bye_event.ids)
		@c = BuildingComponent.find(session[:current_component])
		@new_e = @c.historical_data.create(historical_datum_params)
		redirect_to show_historical_data_path(id: session[:current_component])
	end
	
	def show_photos
		@building_name = params[:id]
		
		@historical_img = HistoricalDatum.where(:name => @building_name)
	end
  
	def historical_datum_params
		params.require(:historical_datum).permit(:component_name, :name, :date, :event, :image)
	end
end
