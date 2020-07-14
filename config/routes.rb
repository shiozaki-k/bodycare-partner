Rails.application.routes.draw do
  resources :events
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: [:show, :new, :cretate]
  resources :reservations, only: :show
  resources :events, only: :show
end
# root to: "posts#index"
  # devise_for :users, controllers: { registrations: 'users/registrations' }

  # resource :users do
  #   get 'edit'
  # end
  # resource :posts do
  #   get 'logout'
  #   get 'events'
  # end
  
    # get 'addresses', to: 'addresses#index'



  
  # resources :events
  # resources :events do 
  #   get 'post'
  #   get 'event'
    # resources :comments, only: [ :create, :destroy]
    # collection do
    #   get 'category_children' 
    #   get 'category_grandchildren'
  # end

    # resources :buyers, only: [:index] do
    #   collection do
    #     get 'done', to: 'buyers#done'
    #     post 'pay', to: 'buyers#pay'
    #   end
    # end
    

  # end

  # resources :cards,only:[:index,:new,:show]do
  # collection do
  #   #payjpでトークン化を行う
  #   post 'pay', to: 'cards#pay'
  #   #カード削除
  #   post 'delete', to: 'cards#delete'
  #   #カード情報入力
  #   post 'show', to: 'cards#show'
  # end
# end

    # end
  