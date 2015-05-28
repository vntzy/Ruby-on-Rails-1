Rails.application.routes.draw do

  root 'users#index'

  get 'sign-up' => 'users#sign_up'
  post 'create-account' => 'users#create_account'
  post 'login' => 'users#login'
  get 'home' => 'users#home'
  post 'logout' => 'users#logout'
end
