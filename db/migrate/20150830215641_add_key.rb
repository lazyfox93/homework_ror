class AddKey < ActiveRecord::Migration
   def change
  	  change_table(:animals) do |t|
        t.references :users
    end
  end
end
