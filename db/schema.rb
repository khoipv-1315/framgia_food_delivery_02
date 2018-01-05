# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180105033527) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "discount"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "quantity"
    t.float "price", limit: 24
    t.bigint "food_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_orders_on_food_id"
    t.index ["order_id"], name: "index_food_orders_on_order_id"
  end

  create_table "foods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.float "price", limit: 24
    t.bigint "discount_id"
    t.bigint "category_id"
    t.boolean "actived", default: true
    t.text "description"
    t.boolean "is_top", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_foods_on_category_id"
    t.index ["discount_id"], name: "index_foods_on_discount_id"
    t.index ["name"], name: "index_foods_on_name", unique: true
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "description"
    t.float "total_price", limit: 24
    t.integer "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "rate"
    t.string "content"
    t.bigint "user_id"
    t.bigint "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_reviews_on_food_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.boolean "admin", default: false
    t.string "password_digest"
    t.string "avatar"
    t.integer "phone"
    t.string "address"
    t.string "remember_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "food_orders", "foods"
  add_foreign_key "food_orders", "orders"
  add_foreign_key "foods", "categories"
  add_foreign_key "foods", "discounts"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "foods"
  add_foreign_key "reviews", "users"
end
