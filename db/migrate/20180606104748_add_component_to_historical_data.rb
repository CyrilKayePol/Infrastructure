class AddComponentToHistoricalData < ActiveRecord::Migration
  def change
	add_column :historical_data, :component_name, :text
  end
end
