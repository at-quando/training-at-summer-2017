Rails.application.routes.draw do


  # get 'password_reset/:email/edit', :to => 'password_reset#edit'
  # post 'password_reset/:email/edit', :to => 'password_reset#update'
  # get 'password_reset/index' => 'password_reset/index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/register' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get ':token/confirm_email', :to => 'users#confirm_email', as: 'confirm_email'
  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]
  get '/password_resets/index' => 'password_resets#index'
  root 'users#index'
end
