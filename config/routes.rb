  Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  authenticated :user do
    root 'pages#secret', as: :authenticated_root
  end
  root to: 'pages#home'
  get '/confirm/:id', to: 'runs#confirm_edit', as: 'confirm'
  patch '/confirm/:id', to: 'runs#confirm_update'

  resources :dogs

  resources :runs  #, except: [:create]
  resources :pages, only: [:help, :become_runner, :gps]
  resources :profiles, except: [:new, :create]



  get 'help', to: 'pages#help'
  get 'become_runner', to: 'pages#become_runner'
  get 'gps', to: 'pages#gps'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
end

