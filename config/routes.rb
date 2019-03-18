Rails.application.routes.draw do
  resources :posts, only: [:index]
  resources :users do
    resources :posts, only: [:show, :new, :edit, :create, :update, :destroy]
  end

  root to: 'users#index'
end
