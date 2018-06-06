class RemoveDescription < ActiveRecord::Migration
  def change
	remove_column :components, :description
  end
end
