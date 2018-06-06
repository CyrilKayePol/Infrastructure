class AddCategoryColumn < ActiveRecord::Migration
  def change
	add_column :components, :category ,:text
  end
end
