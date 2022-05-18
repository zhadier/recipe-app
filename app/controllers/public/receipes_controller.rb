class Public::ReceipesController < ApplicationController
  def index
    @receipes = Receipe.where(Public: true).order(:created_at).includes(:user)
  end

  def show
    @receipe = Receipe.find_by(id: params[:id], Public: true)
    @receipe_foods = @receipe.food_ingredients.includes(:food)
    @missing_foods = Food.where.not(id: @receipe_foods.pluck(:food_id))
  end

  def receipe_params
    params.require(:receipe).permit(:Name, :PreparationTime, :CookingTime, :Public)
  end
end
