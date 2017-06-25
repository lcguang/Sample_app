Rails.application.routes.draw do
  resources :password_resets,     only: [:new, :create, :edit, :update]
  get 'password_resets/new'
  get 'password_resets/edit'

  resources :account_activations, only: [:edit]
  get 'sessions/new'

  resources :users
  get 'users/new', to: 'users#new', as: :signup

  get 'sessions/login', to: 'sessions#new', as: :login
  post 'sessions/login', to: 'sessions#create'
  delete 'sessions/logout',  to: 'sessions#destroy', as: :logout

  get 'static_pages/home', to: 'static_pages#home', as: :home
  get 'static_pages/help', to: 'static_pages#help', as: :help
  get 'static_pages/about', to: 'static_pages#about', as: :about
  get 'static_pages/contact', to: 'static_pages#contact', as: :contact

  root 'static_pages#home'

end
