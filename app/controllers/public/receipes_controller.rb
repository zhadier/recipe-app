class Public::ReceipesController < ApplicationController
  def index
    @receipes = Receipe.where(Public: true).includes(:user)
  end

  def receipe_params
    params.require(:receipe).permit(:Name, :PreparationTime, :CookingTime, :Public)
  end
end
