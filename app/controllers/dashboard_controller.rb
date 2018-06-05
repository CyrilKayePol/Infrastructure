class DashboardController < ApplicationController
	before_filter :confirm_logged_in, :only => [:dashboard]

	def dashboard
		@building_count = Building.count
		@news = News.order('created_at DESC').last(5)
	end
end
