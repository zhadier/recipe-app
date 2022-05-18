class FoodIngredient < ApplicationRecord
    belongs_to :food
    belongs_to :receipe

    def food_name
        self.food.name
    end
end
