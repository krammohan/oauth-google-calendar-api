Rails.application.routes.draw do
  # Specify which controller Devise should use as callbacks controller
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  get '/users/auth/google_oauth2/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
