Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :posts
  get 'posts/page/:page', to: 'posts#index'
  get 'home/index'
  root 'posts#index'
end
