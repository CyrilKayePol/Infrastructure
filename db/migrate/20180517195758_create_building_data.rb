class CreateBuildingData < ActiveRecord::Migration
  def change
    create_table :building_data do |t|
      t.text :name
      t.text :roofing
      t.text :ceiling
      t.text :floor
      t.text :door
      t.text :door_knobs
      t.text :painting
      t.text :walling
      t.text :tiles
      t.text :switches
      t.text :outlets
      t.text :lights
      t.text :wires
      t.text :chairs
      t.text :tables
      t.text :aircon
      t.text :electic_fans
      t.text :projectors
      t.text :blackboard
      t.text :whiteboard
      t.text :glassboard
      t.text :plumbing
      t.text :fence
      t.text :staircase
      t.text :covered_walk
      t.text :comfort_room

      t.timestamps null: false
    end
  end
end