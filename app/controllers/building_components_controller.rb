class BuildingComponentsController < ApplicationController

	def show_building_components
		@building_components = BuildingComponent.where(building_name: params[:id])
		@building_name = params[:id]
	end
	
	
	def add_to_building
		component_id = params[:id]
		building_name = params[:name]
		component = Component.find(component_id)
		
		@new_building_com = BuildingComponent.create!(name: component.name, status: 'Good Condition', category: component.category, building_name: building_name)
		#@new_building_com = @building.building_components.create(name: component.name, status: 'Good Condition', category: component.category, building_name: building_name)
		redirect_to add_component_to_building_path(id: building_name) 
	end
	
	def delete_building_component
		@bc = params[:id]
		@com = BuildingComponent.find(@bc)
		@com.delete
		redirect_to show_building_components_path(id: @com.building_name) 
		
	end
	
	def edit_building_component
		@bc = params[:id]
		session[:current_building_com] = @bc
		@com = BuildingComponent.where(id: @bc)
	end
	
	def update_building_component
		@delete_buil_com = BuildingComponent.find(session[:current_building_com])
		@delete_buil_com.delete
		@new_buil_com = BuildingComponent.create!(name: params[:com_name], status: params[:com_status], category: params[:com_cat], building_name: @delete_buil_com.building_name)
		
		redirect_to show_building_components_path(id: @new_buil_com.building_name)
	end
	
end
