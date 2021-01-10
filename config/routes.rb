Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post '/', to: 'home#create'
  resources :subscribes, controller: 'subscribe', except: [:show]
end
