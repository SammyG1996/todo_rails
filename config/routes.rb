Rails.application.routes.draw do
  resources :lists
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "home/trash_em"
  delete "home/trash_em_all"
  put "home/check_marker"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  

  # Defines the root path route ("/")
  # root "posts#index"
end
