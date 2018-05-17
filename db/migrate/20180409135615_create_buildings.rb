class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.date :date_built
      t.string :condition

      t.timestamps null: false
    end
  end
end
