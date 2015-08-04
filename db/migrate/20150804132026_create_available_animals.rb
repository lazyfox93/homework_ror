class CreateAvailableAnimals < ActiveRecord::Migration
  def change
    create_table :available_animals do |t|
      t.references :animal, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true
      t.float :price
      t.integer :quantity
      t.text :note
      t.text :animal_picture
      t.date :last_show_date
      t.float :age
      t.float :weight
      t.float :height

      t.timestamps null: false
    end
  end
end
