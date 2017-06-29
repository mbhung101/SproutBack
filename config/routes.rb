Rails.application.routes.draw do
  resources :yields
  resources :images
  resources :days
  resources :seasons
  resources :alerts
  resources :gardens
  resources :patches
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
