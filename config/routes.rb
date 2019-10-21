Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :posts, only: [:index, :show, :new, :create]
  resources :orders, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
