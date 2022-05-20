class Receipe < ApplicationRecord
  belongs_to :user
  has_many :food_ingredients, dependent: :delete_all
  validates :total_price, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :total_food_items, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

  def food_ingredients
    FoodIngredient.where(receipe_id: id)
  end
end
