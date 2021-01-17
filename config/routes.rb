Rails.application.routes.draw do
  get 'posts/index'
  root 'home#index'
  devise_for :users
  resources :subscribes, controller: 'subscribe', except: [:show]
  get 'news', to: "newsletter#index"
  get 'news/:id/:title', to: "posts#index", as: "post"
end
