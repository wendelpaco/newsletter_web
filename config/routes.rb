Rails.application.routes.draw do
  get 'posts/index'
  root 'home#index'
  devise_for :users
  resources :subscribes, controller: 'subscribe', except: [:show]
  get 'newsletter/inscricao', to: "newsletter#index"
  get 'news/:id/:slug', to: "posts#index", as: "post_id"
end
