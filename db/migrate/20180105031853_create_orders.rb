class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :description
      t.float :total_price
      t.integer :status
      t.references :user, index: true, foreign_key: true 

      t.timestamps
    end
  end
end
