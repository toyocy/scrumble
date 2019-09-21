Rails.application.routes.draw do
  root to: 'static_pages#index'
  
  get 'dashboard', to: 'static_pages#dashboard'
  get 'static_pages/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
  }

  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  resources :organizations
end
