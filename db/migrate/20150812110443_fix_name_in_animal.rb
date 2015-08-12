class FixNameInAnimal < ActiveRecord::Migration
  def change
  	rename_column :animals, :type, :animals_type
  end
end
