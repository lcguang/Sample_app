Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home', to: 'static_pages#home', as: :home

  get 'static_pages/help', to: 'static_pages#help', as: :help

  get 'static_pages/about', to: 'static_pages#about', as: :about

  get 'static_pages/contact', to: 'static_pages#contact', as: :contact

end
