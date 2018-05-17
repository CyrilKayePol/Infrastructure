class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :mobile_number, :text
    add_column :users, :birthday, :date
    add_column :users, :religion, :text
  end
end
