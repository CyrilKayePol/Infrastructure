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