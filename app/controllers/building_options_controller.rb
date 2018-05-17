class BuildingOptionsController < ApplicationController
	before_filter :confirm_logged_in, :only => [:add_building]

  
  def add_building
     @buildingname = params[:buildingname]
	 @datebuilt = params[:datebuilt]
     @info = params[:info]	 
	 
  end
 


end