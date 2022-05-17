class ReceipeFoodController < ApplicationController
  def new
    @receipe_food = ReceipeFood.new
  end

  def create
    @receipe_food = ReceipeFood.new(receipe_food_params)
    if @receipe_food.save
      redirect_to receipe_foods_path
    else
      render :new
    end
  end

  def destroy
    @receipe_food = ReceipeFood.find(params[:id])
    @receipe_food.destroy
    redirect_to receipe_foods_path
  end

  private

  def receipe_food_params
    params.require(:receipe_food).permit(:receipe_id, :food_id)
  end
end
