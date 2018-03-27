Rails.application.routes.draw do
  resources :deals, only: [:show, :index, :new, :create, :edit]
  resources :rounds, only: [:new, :create, :show]
  resources :hands, only: [:new, :create]
  resources :games, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :cards, only: [:show, :index]
  resources :players, only: [:new, :create, :show]

  get "login", to: "sessions#new"
  post "sessions", to: "sessions#create"
  post "logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
