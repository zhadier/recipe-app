class FoodIngredient < ApplicationRecord
  belongs_to :food
  belongs_to :receipe

  after_create :add_total_items

  before_destroy :delete_total_items

  private

  def add_total_items
    receipe.increment!(:total_food_items)
    current_price = receipe.total_price
    receipe.update(total_price: (current_price + (self.Quantity * food.price)))
  end

  def delete_total_items
    receipe.decrement!(:total_food_items)
    current_price = receipe.total_price
    receipe.update(total_price: (current_price - (self.Quantity * food.price)))
  end

  def food_name
    food.name
  end
end
