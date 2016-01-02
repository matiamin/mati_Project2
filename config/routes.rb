Rails.application.routes.draw do
  get 'page/about'
  get 'page/policy'

  # is there a reson to have two routes for contacts#new? Generally unless you
  # need a second, just the standard restful one is best
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]


  resources :users, only: [:show]

  devise_for :users, :path => 'accounts'
  resources :entries


  # I'd move this to the top for consistency
  root 'entries#index'
end
