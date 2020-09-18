Rails.application.routes.draw do
  devise_for :therapists
  devise_for :customers
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :customers
end
