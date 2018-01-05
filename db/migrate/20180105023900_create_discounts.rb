class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.integer :discount
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
