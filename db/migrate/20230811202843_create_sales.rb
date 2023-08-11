class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.datetime :date
      t.references :customer, null: false, foreign_key: true
      t.decimal :total_amount

      t.timestamps
    end
  end
end
