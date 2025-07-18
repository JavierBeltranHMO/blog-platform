Rails.application.routes.draw do
  namespace :admin do
    get "dashboard/index"
  end
  get "users/show"
  devise_for :users, controllers: {
        registrations: "users/registrations"
      }
  resources :blogs
  get "myblogs", as: "blogs/myblogs", to: "blogs#myblogs"

  namespace :admin do
    get "dashboard", to: "dashboard#index"
  end

  delete "cancel_account", to: "users#cancel_account", as: :cancel_account

  resources :users, only: [ :show ]
  get "up" => "rails/health#show", as: :rails_health_check

  root "blogs#index"
end
