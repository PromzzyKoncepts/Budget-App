Rails.application.routes.draw do
  devise_for :users

  root to: "splash#index"
  resources :groups, only: [:index, :create, :new, :show, :edit, :update, :destroy] do
    resources :operations, only: [:index, :create, :new, :show, :edit, :update, :destroy]
  end
 
end
