Rails.application.routes.draw do
  
  get 'likes/create'
  get 'likes/destroy'
  get 'static_pages/home'
  get 'static_pages/help'
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :likes,               only: [:create, :destroy]
  

  #rootが変更された時のための保険
  get '/signup', to:'users#new'

  #エラー対応のためコメントアウト
  get   '/home',     to: 'static_pages#home'
  get   '/help',     to: 'static_pages#help'


end