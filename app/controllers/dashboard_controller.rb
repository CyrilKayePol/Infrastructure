class DashboardController < ApplicationController
	before_filter :confirm_logged_in, :only => [:dashboard]

	def dashboard
	
	end
end
