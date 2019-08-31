Rails.application.routes.draw do
  devise_for :users
  root "feed#index"

  get '/feed', to: 'feed#index'

  resources :profile, only: %w[show]
  resources :users
  resources :posts
  resources :comments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
