Rails.application.routes.draw do
  root 'users#new'

  #rootが変更された時のための保険
  #get '/signup', to:'users#new'

  resources:users
end