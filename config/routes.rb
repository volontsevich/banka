Rails.application.routes.draw do
  root 'ideas#index'

  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

end
