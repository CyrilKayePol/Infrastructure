class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.text :name
      t.text :description
      t.text :status

      t.timestamps null: false
    end
  end
end
