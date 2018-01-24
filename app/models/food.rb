class Food < ApplicationRecord
  has_many :food_orders
  has_many :orders, through: :food_orders
  has_many :reviews, dependent: :destroy
  belongs_to :discount
  belongs_to :category

  mount_uploader :image, PhotoUploader

  validates :name, presence: true, length: {minimum: 4}
  validates :price, presence: true, numericality: true
  validates :description, presence: true, length: {minimum: 4}
end
