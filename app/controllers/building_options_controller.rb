class BuildingOptionsController < ApplicationController
	before_filter :confirm_logged_in, :only => [:add_building]

  
  def add_building

  # 	if params[:buildingname] != nil && params[:datebuilt] != nil && params[:info] != nil
		# @buildingname = params[:buildingname]
		# @datebuilt = params[:datebuilt]
		# @info = params[:info]
		# @buildings = Building.create!(@buildingname, @datebuilt, @info)
		# redirect_to '/add_building'
	@pangalan = 'Name of building'
	if params[:building] != nil
		@buildings = Building.new(user_params)
		if !(@buildings.save)
			@pangalan = 'Name has already been taken. Please enter a unique name!'
			flash[:warning] = 'Name has already been taken. Please enter a unique name!'
		else
			@news = News.create!(:news => "New building [#{@buildings.name}] was added.")
		end
		
		redirect_to '/view_buildings'
	else
		@buildings = Building.all
	end
  end
  
  def delete_building
	bye_building = params[:id]
	building_del = Building.where(name: bye_building)
	building_datum_del = BuildingDatum.where(name: bye_building)
	historical_datum_del = HistoricalDatum.where(name: bye_building)
	Building.delete(building_del.ids)
	BuildingDatum.delete(building_datum_del.ids)
	HistoricalDatum.delete(historical_datum_del.ids)
	redirect_to '/view_buildings'
  end
  
  def edit_building
	@gusali_edit = Building.where(name: params[:id])
  end
  
  def update_building
	bld = Building.find_by(name: params[:building_name])
	bld.update(:condition => params[:building_condition], :date_built => params[:building_date_built])
	redirect_to '/add_building'
  end
 
  def user_params
    params.require(:building).permit(:name, :date_built, :condition)
  end

end