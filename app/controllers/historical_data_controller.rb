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
		@pangalan_gusali = params[:id]
		@building_history = HistoricalDatum.where(name: params[:id])
	
	end
	
	def add_historical_event
		@pangalan_gusali = params[:id]
		@building_events = HistoricalDatum.new
	
	end
	
	def create_event
		@building_events = HistoricalDatum.create!(historical_datum_params)
		@news = News.create!(:news => "[#{@building_events.name}] new event: #{@building_events.event}")
		redirect_to show_historical_data_path(id: @building_events.name)
	end
	
	def delete_historical_event
		@delete_event = HistoricalDatum.find_by(id: params[:id])
		HistoricalDatum.delete(params[:id])
		
		redirect_to show_historical_data_path(id: @delete_event.name)
	end
	
	def edit_historical_event
		@edit_event_id = params[:id]
		session[:current_event_id] = params[:id]
		@b_edit = HistoricalDatum.where(id: @edit_event_id) 
		@building_edit = HistoricalDatum.find_by(id: @edit_event_id) 
	end
	
	def update_historical_event
		bye_event = HistoricalDatum.where(:id => session[:current_event_id])
		HistoricalDatum.delete(bye_event.ids)
		@new_e = HistoricalDatum.create!(historical_datum_params)
		redirect_to show_historical_data_path(id: @new_e.name)
	end
  
	def historical_datum_params
		params.require(:historical_datum).permit(:name, :date, :event, :image)
	end
end
