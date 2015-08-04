class CreatePaymentLogs < ActiveRecord::Migration
  def change
    create_table :payment_logs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :available_animal, index: true, foreign_key: true
      t.date :payment_date
      t.float :price
      t.text :operation

      t.timestamps null: false
    end
  end
end
