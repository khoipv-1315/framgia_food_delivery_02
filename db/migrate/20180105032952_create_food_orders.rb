class CreateFoodOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :food_orders do |t|
      t.integer :quantity
      t.float :price
      t.references :food, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
