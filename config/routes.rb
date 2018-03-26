Rails.application.routes.draw do
  resources :deals
  resources :rounds
  resources :hands
  resources :games
  resources :cards, only: [:show, :index]
  resources :players

  get "login", to: "sessions#new"
  post "sessions", to: "sessions#create"
  post "logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
