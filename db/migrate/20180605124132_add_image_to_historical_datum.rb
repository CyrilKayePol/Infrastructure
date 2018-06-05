class AddImageToHistoricalDatum < ActiveRecord::Migration
  def change
	add_attachment :historical_data, :image
  end
end
