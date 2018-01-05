class Discount < ApplicationRecord
  has_many :foods, dependent: :destroy
end
