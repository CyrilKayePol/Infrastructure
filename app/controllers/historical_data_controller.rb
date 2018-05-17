class HistoricalDataController < ApplicationController
	before_filter :confirm_logged_in, :only => [:historical_data]
	
	def historical_data
		if params[:sorter].present?
			if params[:sorter] == 'name'
				@historical_data = HistoricalDatum.order(name: :asc)
			elsif params[:sorter] == 'date'
				@historical_data = HistoricalDatum.order(date: :asc)
			end
		else
			@historical_data = HistoricalDatum.all
		end
  end 
end
