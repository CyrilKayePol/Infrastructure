class BuildingComponent < ActiveRecord::Base
    has_many :historical_data, dependent: :destroy
	belongs_to :building
end
