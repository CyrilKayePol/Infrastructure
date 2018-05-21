class RenameReligionToAddress < ActiveRecord::Migration
  def change
    rename_column :users, :religion, :address
  end
end
