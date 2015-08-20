class ChangeReferences < ActiveRecord::Migration
  def change
  	    change_table :available_animals do |t|
      t.remove :seller_id
      t.references :user, index: true, foreign_key: true
    end
  end
end
