class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_food
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
end
