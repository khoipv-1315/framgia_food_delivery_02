class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :admin, default: false
      t.string :password_digest, null: true
      t.string :avatar, null: true
      t.integer :phone, null: true
      t.string :address, null: true
      t.string :remember_digest, null: true

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
