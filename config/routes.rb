Rails.application.routes.draw do
  # Devise
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  # blogs
  resources :blogs
  get "myblogs", as: "blogs/myblogs", to: "blogs#myblogs"

  # Users
  resources :users, only: [ :show ]
  delete "cancel_account", to: "users#cancel_account", as: :cancel_account

  # Admin panel
  namespace :admin do
    get "dashboard", to: "dashboard#index"

    resources :users, only: [ :index, :destroy ] do
      member do
        patch :toggle_role
        get :confirm_destroy
        delete :destroy_with_password
      end
    end
  end

  # health  check and root
  get "up" => "rails/health#show", as: :rails_health_check
  root "blogs#index"
end
