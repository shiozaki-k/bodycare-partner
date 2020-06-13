Rails.application.routes.draw do
  resources :events
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show
  resources :reservations, only: :show
  resources :events, only: :show
end
  