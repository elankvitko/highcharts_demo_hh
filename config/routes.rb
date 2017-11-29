Rails.application.routes.draw do
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'data/heartrate'
  get 'data/activity'
  get 'data/calories'

  root to: 'home#index'
end
