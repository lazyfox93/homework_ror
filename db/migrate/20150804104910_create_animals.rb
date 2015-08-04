class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :type
      t.string :breed

      t.timestamps null: false
    end
  end
end
