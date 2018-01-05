class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.string :content
      t.references :user, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
