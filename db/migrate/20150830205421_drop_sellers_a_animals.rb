class DropSellersAAnimals < ActiveRecord::Migration
  def change
  	drop_table :sellers

  end
end
