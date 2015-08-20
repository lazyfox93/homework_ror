class AddDescription < ActiveRecord::Migration
  def change
  	add_column :available_animals, :description, :string 
  end
end
