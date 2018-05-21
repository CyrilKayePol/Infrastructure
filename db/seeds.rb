# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Building.destroy_all
building1 = Building.create!(:name => 'Multi - Purpose Building', :date_built => 1995, :condition => 'Usable')
building2 = Building.create!(:name => 'Student Lounge', :date_built => 2006, :condition => 'Usable')
building3 = Building.create!(:name => 'Support Services Building', :date_built => 2004, :condition => 'Usable')
building4 = Building.create!(:name => 'Administration & Faculty Center', :date_built => 1995, :condition => 'Usable')
BuildingDatum.destroy_all
bd1 = BuildingDatum.create!(:name => 'Multi - Purpose Building', :roofing => 'OK', :ceiling => 'OK', :floor => 'OK', :door => 'OK', :door_knobs => 'OK', :painting => 'OK', :walling => 'OK', :tiles => 'OK', :switches => 'OK', :outlets => 'OK', :lights => 'OK', :wires => 'OK', :chairs => 'OK', :tables => 'OK', :aircon => 'N/A', :electic_fans => 'OK', :projectors => 'N/A', :blackboard => 'OK', :whiteboard => 'N/A', :glassboard => 'N/A', :plumbing => 'OK', :fence => 'N/A', :staircase => 'OK', :covered_walk => 'OK', :comfort_room => 'OK')
bd2 = BuildingDatum.create!(:name => 'Student Lounge', :roofing => 'OK', :ceiling => 'OK', :floor => 'OK', :door => 'OK', :door_knobs => 'OK', :painting => 'OK', :walling => 'OK', :tiles => 'OK', :switches => 'OK', :outlets => 'OK', :lights => 'OK', :wires => 'OK', :chairs => 'OK', :tables => 'OK', :aircon => 'N/A', :electic_fans => 'OK', :projectors => 'N/A', :blackboard => 'OK', :whiteboard => 'N/A', :glassboard => 'N/A', :plumbing => 'OK', :fence => 'N/A', :staircase => 'OK', :covered_walk => 'OK', :comfort_room => 'OK')
bd3 = BuildingDatum.create!(:name => 'Support Services Building', :roofing => 'OK', :ceiling => 'OK', :floor => 'OK', :door => 'OK', :door_knobs => 'OK', :painting => 'OK', :walling => 'OK', :tiles => 'OK', :switches => 'OK', :outlets => 'OK', :lights => 'OK', :wires => 'OK', :chairs => 'OK', :tables => 'OK', :aircon => 'OK', :electic_fans => 'OK', :projectors => 'OK', :blackboard => 'OK', :whiteboard => 'N/A', :glassboard => 'N/A', :plumbing => 'OK', :fence => 'N/A', :staircase => 'N/A', :covered_walk => 'N/A', :comfort_room => 'OK')
bd4 = BuildingDatum.create!(:name => 'Administration & Faculty Center', :roofing => 'OK', :ceiling => 'OK', :floor => 'OK', :door => 'OK', :door_knobs => 'OK', :painting => 'OK', :walling => 'OK', :tiles => 'OK', :switches => 'OK', :outlets => 'OK', :lights => 'OK', :wires => 'OK', :chairs => 'OK', :tables => 'OK', :aircon => 'OK', :electic_fans => 'OK', :projectors => 'OK', :blackboard => 'OK', :whiteboard => 'N/A', :glassboard => 'N/A', :plumbing => 'OK', :fence => 'N/A', :staircase => 'N/A', :covered_walk => 'N/A', :comfort_room => 'OK')