class RemoveGenderBirthday < ActiveRecord::Migration
  def change
	remove_column :users, :birthday
	remove_column :users, :gender
  end
end
