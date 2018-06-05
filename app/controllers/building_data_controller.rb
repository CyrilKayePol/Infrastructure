class BuildingDataController < ApplicationController
	def new_building_detail
		n = params[:id]
		@name = session[:current_building]
		@building_details = BuildingDatum.new
	end
	
	def create
		
		bld = Building.where(name: session[:current_building])
		@building_details  = BuildingDatum.create!(building_datum_params)
		@news = News.create!(:news => "Check new status of [#{@building_details.name}]")
		redirect_to show_building_detail_path(:id => @building_details.name)
		
	end
	
	
	def show_building_detail
    	b = params[:id]
    	@bd = b
		session[:current_building] = b
    	@building_datum = BuildingDatum.where(name: b)
    end
	
	def edit_building_view
		@gusali_edit = Building.where(name: params[:id])
	end
  
	def update_building_view
		bld = Building.find_by(name: params[:building_name])
		bld.update(:condition => params[:building_condition], :date_built => params[:building_date_built])
		redirect_to '/view_buildings'
	end
	
	def edit_building_detail
		bd_name = params[:id]
		@gusali = BuildingDatum.where(name: bd_name)
		@buil = BuildingDatum.new
	end
	
	
	def update_building_detail
		bye_detail = BuildingDatum.where(name: params[:building_datum][:name])
		BuildingDatum.delete(bye_detail.ids)
		@new_b = BuildingDatum.create!(building_datum_params)
		redirect_to show_building_detail_path(:id => @new_b.name)
	end
	
	
	def building_datum_params
		params.require(:building_datum).permit(:name, :roofing, :ceiling, :floor, :door, :door_knobs,
		:painting, :walling, :tiles, :switches, :outlets, :lights, :wires, :chairs, :tables,
		:aircon, :electic_fans, :projectors, :blackboard, :whiteboard, :glassboard, :plumbing,
		:fence, :staircase, :covered_walk, :comfort_room,:image)
		#:image_file_name, :image_content_type,:image_file_size, :image_updated_at)
	end
end
