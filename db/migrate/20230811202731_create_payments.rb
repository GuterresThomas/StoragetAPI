class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :sale, null: false, foreign_key: true
      t.decimal :amount_paid
      t.string :payment_method

      t.timestamps
    end
  end
end
