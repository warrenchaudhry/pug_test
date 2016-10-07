Rails.application.routes.draw do
  get '/dashboards', to: 'dashboards#index', as: :dashboards

  resources :users, only: [:new, :create]
  get '/signup', to: 'users#new', as: :signup

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout


  root to: 'dashboards#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
