class DropTrash < ActiveRecord::Migration
  def change
  	drop_table :admins
  	remove_column :users, :password 
  end
end
