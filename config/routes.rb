Rails.application.routes.draw do
  get 'page/about'
  get 'page/policy'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]


  resources :users, only: [:show]

  devise_for :users, :path => 'accounts'
  resources :entries



  root 'entries#index'


end
