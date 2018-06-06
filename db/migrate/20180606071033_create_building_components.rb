class CreateBuildingComponents < ActiveRecord::Migration
  def change
    create_table :building_components do |t|
      t.text :name
      t.text :status
      t.text :category
      t.text :building_name

      t.timestamps null: false
    end
  end
end
