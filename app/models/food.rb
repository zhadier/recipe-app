class Food < ApplicationRecord
  belongs_to :user
  has_many :food_ingredients, dependent: :delete_all
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
end
