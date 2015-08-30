class ChangeUser < ActiveRecord::Migration
  def change
  	remove_column :users,:first_name
  	remove_column :users,:last_name
  	remove_column :users,:phone
  	remove_column :users,:city
  	remove_column :users,:country
  	remove_column :users,:address
  	remove_column :users,:raiting
  end
end
