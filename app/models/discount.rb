class Discount < ApplicationRecord
  has_many :foods, dependent: :destroy

  validates :discount, presence: true, uniqueness: true, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
