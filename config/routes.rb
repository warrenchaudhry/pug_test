Rails.application.routes.draw do
  get '/secret', to: 'dashboards#index', as: :secret
  root to: 'dashboards#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
