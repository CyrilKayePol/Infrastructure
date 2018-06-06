class Building < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_many :components, dependent: :destroy
	
end
