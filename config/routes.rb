Rails.application.routes.draw do
  resources :users, only: [:show]

  devise_for :users, :path => 'accounts'
  resources :entries



  root 'entries#index'


end
