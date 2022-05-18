class Receipe < ApplicationRecord
  belongs_to :user
  has_many :food_ingredients, dependent: :delete_all

  def food_ingredients
    FoodIngredient.where(receipe_id: self.id)
  end
end
