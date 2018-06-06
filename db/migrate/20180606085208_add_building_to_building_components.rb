class AddBuildingToBuildingComponents < ActiveRecord::Migration
  def change
    add_column :building_components, :building_id, :integer
    add_index :building_components, :building_id
  end
end
