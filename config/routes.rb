Rails.application.routes.draw do
  get 'page/about'

  get 'page/policy'

  resources :users, only: [:show]

  devise_for :users, :path => 'accounts'
  resources :entries



  root 'entries#index'


end
