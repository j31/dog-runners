Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'

  resources :dogs do
    resources :runs, only: [:create]
  end

  resources :runs, except: [:create]
  resources :pages, only: [:help, :become_runner]
  resources :profiles, except: [:new, :create]

  get 'help', to: 'pages#help'
  get 'become_runner', to: 'pages#become_runner'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
