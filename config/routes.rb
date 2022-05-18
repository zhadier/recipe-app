Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :receipes , only: [:index, :show, :new, :create, :destroy] do
    resources :food_ingredient, only: [:new, :create, :destroy]
  end
  root 'foods#index'
  resources :foods, only: %i[index show new create destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end