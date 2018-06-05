class RemoveBuildingDataIdInBuilding < ActiveRecord::Migration
  def change
	remove_column :buildings, :building_data_id
  end
end
