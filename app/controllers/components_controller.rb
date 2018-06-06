class ComponentsController < ApplicationController
	def add_component_to_building
		@building_name = params[:id]
		@building_com = BuildingComponent.where(building_name: @building_name).select(:name)
		
		@list = ""
		
		if !@building_com.nil?
			@components = Component.where('name NOT IN (?)', @building_com)
		else
			@components = Component.all
		end
	end
	
	def add_new_component
		
		session[:building_name_component] = params[:id]
	end
	
	def create_new_component
		@c = Component.create!(name: params[:com_name], category: params[:com_cat])
		redirect_to add_component_to_building_path(id: session[:building_name_component])
	end
	
	def component_params
		params.require(:component).permit(:name, :category)
	end
end
