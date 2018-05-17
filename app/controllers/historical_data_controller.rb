class HistoricalDataController < ApplicationController
	before_filter :confirm_logged_in, :only => [:historical_data]
	
	def add_historical_data
		if params[:data] != nil
			@data = HistoricalDatum.create!(user_params)
			redirect_to '/add_historical_data'
		else
			@data = HistoricalDatum.all
		end
	end
	
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
  
  def user_params
    params.require(:data).permit(:name, :date, :event)
  end
end
