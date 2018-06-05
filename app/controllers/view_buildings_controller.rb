class ViewBuildingsController < ApplicationController
	before_filter :confirm_logged_in, :only => [:view_buildings, :show_building_detail]
	
	
	def view_buildings
		if params[:sorter].present?
			if params[:sorter] == 'name'
				@buildings = Building.order(name: :asc)
			elsif params[:sorter] == 'date'
				@buildings = Building.order(date_built: :asc)
			end
		elsif params[:search_field].present?
			@buildings = Building.where(name: params[:search_field])
		else
			@buildings = Building.all
		end
	end
	
end
