class FoodIngredientController < ApplicationController
  def new
    @food_ingredient = Receipe.find(params[:receipe_id]).food_ingredients.new
  end
end
