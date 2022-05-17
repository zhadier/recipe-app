class ReceipesController < ApplicationController
  def index
    @receipes = current_user.receipes
  end

  def show
    @receipe = current_user.receipes.find(params[:id])
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
    params.require(:receipe).permit(:Name, :PreparationTime, :CookingTime, :Public)
  end
end
