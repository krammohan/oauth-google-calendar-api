Rails.application.routes.draw do
  # Specify which controller Devise should use as callbacks controller
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
