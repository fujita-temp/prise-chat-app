Rails.application.routes.draw do
  get 'sessions/new'
  root 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources:users

  #rootが変更された時のための保険
  #get '/signup', to:'users#new'

end