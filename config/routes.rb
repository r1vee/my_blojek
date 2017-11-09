Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'posts/page/:page', to: 'posts#index'
  get 'home/index'
  root 'posts#index'
end
