class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :news
      t.time :time

      t.timestamps null: false
    end
  end
end
