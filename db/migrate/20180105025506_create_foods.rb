class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.float :price
      t.references :discount, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.boolean :actived, default: true
      t.text :description
      t.boolean :is_top, default: false

      t.timestamps null: false
    end
    add_index :foods, :name, unique: true
  end
end
