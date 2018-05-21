class DashboardController < ApplicationController
	before_filter :confirm_logged_in, :only => [:dashboard]

	def dashboard
		@building_count = Building.count
	end
end
