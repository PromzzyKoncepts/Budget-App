Rails.application.routes.draw do
  devise_for :users

  root to: "splash#index"
  # resources :users
  resources :groups, only: [:index, :create, :new, :show, :edit, :update, :destroy] do
    resources :operations, only: [:index, :create, :new, :show, :edit, :update, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
