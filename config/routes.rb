Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post '/', to: 'home#create'
  #get 'subscribes', to: 'subscribe#index'
  #post 'subscribes', to: 'subscribe#create'
  resources :subscribes, controller: 'subscribe', except: [:show]
end
