class BuildingOptionsController < ApplicationController
	before_filter :confirm_logged_in, :only => [:add_building]

  
  def add_building

  # 	if params[:buildingname] != nil && params[:datebuilt] != nil && params[:info] != nil
		# @buildingname = params[:buildingname]
		# @datebuilt = params[:datebuilt]
		# @info = params[:info]
		# @buildings = Building.create!(@buildingname, @datebuilt, @info)
		# redirect_to '/add_building'
	if params[:building] != nil
		@buildings = Building.create!(user_params)
		redirect_to '/add_building'
	else
		@buildings = Building.all
	end
  end
 
  def user_params
    params.require(:building).permit(:name, :date_built, :condition)
  end

end