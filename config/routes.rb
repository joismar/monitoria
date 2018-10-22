Rails.application.routes.draw do
  devise_for :users
  get 'users/new'
  get 'sessions/new'
  get 'home/index'
  
  root 'home#index'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
