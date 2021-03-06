Rails.application.routes.draw do
  resources :deals do
    resources :hands
  end
  resources :games do
    resources :rounds
  end

  resources :cards, only: [:show, :index]
  resources :players, only: [:new, :create, :show]

  get "login", to: "sessions#new"
  post "sessions", to: "sessions#create"
  post "logout", to: "sessions#destroy"
  get "/games/:id/rounds/:id/results", to: "rounds#results", as: :game_round_results
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
