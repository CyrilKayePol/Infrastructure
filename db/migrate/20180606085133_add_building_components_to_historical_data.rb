class AddBuildingComponentsToHistoricalData < ActiveRecord::Migration
  def change
	add_column :historical_data, :building_component_id, :integer
    add_index :historical_data, :building_component_id
  end
end
