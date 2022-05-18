Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'

    root 'foods#index'
    resources :foods, only: %i[index show new create destroy]
    resources :receipes, only: %i[index show new create destroy] do
      resources :food_ingredient, only: %i[new create destroy]
    end

    namespace :public do
      resources :receipes, only: %i[index show new create destroy] do
        resources :food_ingredient, only: %i[new create destroy]
      end
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
