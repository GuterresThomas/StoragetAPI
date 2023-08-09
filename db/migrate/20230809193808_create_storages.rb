class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.string :name
      t.integer :quantity
      t.string :price
      t.string :float

      t.timestamps
    end
  end
end
