Rails.application.routes.draw do
  resources :microposrs
  resources :users
  root 'user#index'
end
