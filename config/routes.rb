Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :receipes , only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :receipe_foods
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
