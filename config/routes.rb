Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'

  resources :dogs do
    resources :runs, only: [:create]
  end

  resources :runs, except: [:create]
  resources :pages, only: [:help, :become_runner]
  resources :profiles, except: [:new, :create]

  get 'help', to: 'pages#help'
  get 'become_runner', to: 'pages#become_runner'

end
