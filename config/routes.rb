Rails.application.routes.draw do
  get 'users/new', to: 'users#new', as: :signup

  get 'static_pages/home', to: 'static_pages#home', as: :home

  get 'static_pages/help', to: 'static_pages#help', as: :help

  get 'static_pages/about', to: 'static_pages#about', as: :about

  get 'static_pages/contact', to: 'static_pages#contact', as: :contact

  root 'static_pages#home'

end
