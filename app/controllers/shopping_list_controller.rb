class ShoppingListController < ApplicationController
  def index
    @receipe = Receipe.find(params[:receipe_id])
    @receipe_foods = @receipe.food_ingredients.includes(:food)
  end
end
