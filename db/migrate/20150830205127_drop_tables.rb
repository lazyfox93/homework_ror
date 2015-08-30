class DropTables < ActiveRecord::Migration
  def change
  	drop_table :payment_logs
  end
end
