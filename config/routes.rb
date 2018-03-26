Rails.application.routes.draw do
  resources :deals
  resources :rounds
  resources :hands
  resources :games
  resources :cards
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
