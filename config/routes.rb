Rails.application.routes.draw do

  resources :plant_types
  namespace :api do
      resources :yields
      resources :images
      resources :days
      resources :seasons
      resources :alerts
      resources :gardens
      resources :patches
      resources :users
      resources :currentuser
      resources :garden_patches
    end
end
