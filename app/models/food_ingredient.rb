class FoodIngredient < ApplicationRecord
  belongs_to :food
  belongs_to :receipe

  def food_name
    food.name
  end
end
