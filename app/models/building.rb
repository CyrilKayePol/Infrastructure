class Building < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_one :building_datum, :dependent => :delete
	
end
