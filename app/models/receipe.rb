class Receipe < ApplicationRecord
  has_many :receipe_foods, dependent: :delete_all
  belongs_to :user
  validates :total_price, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :total_food_items, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
end
