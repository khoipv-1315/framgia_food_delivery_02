class Food < ApplicationRecord
  has_many :food_orders
  has_many :orders, through: :food_orders
  has_many :reviews, dependent: :destroy
  belongs_to :discount
  belongs_to :category
end
