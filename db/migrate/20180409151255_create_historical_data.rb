class CreateHistoricalData < ActiveRecord::Migration
  def change
    create_table :historical_data do |t|
	  t.text :name
	  t.date :date
	  t.text :event
	  
      t.timestamps null: false
    end
  end
end
