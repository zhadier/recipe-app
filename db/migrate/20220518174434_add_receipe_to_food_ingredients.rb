class AddReceipeToFoodIngredients < ActiveRecord::Migration[7.0]
  def change
    add_reference :food_ingredients, :receipe, null: false, foreign_key: true
  end
end
