class ReceipesController < ApplicationController
  def index
    @receipes = current_user.receipes
  end

  def show
    @receipe = Receipe.find_by(id: params[:id])
    @receipe_foods = @receipe.food_ingredients.includes(:food)
    @missing_foods = Food.where.not(id: @receipe_foods.pluck(:food_id))
  end

  def new
    @receipe = current_user.receipes.new
  end

  def create
    @receipe = current_user.receipes.new(receipe_params)
    if @receipe.save
      redirect_to receipes_path
    else
      render :new
    end
  end

  def destroy
    @receipe = Receipe.find(params[:id])
    @receipe.destroy
    redirect_to receipes_path
  end

  private

  def receipe_params
    params.require(:receipe).permit(:Name, :Description, :PreparationTime, :CookingTime, :Public)
  end
end
