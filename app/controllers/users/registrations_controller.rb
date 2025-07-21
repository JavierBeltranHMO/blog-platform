# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create, :update]

  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :bio])
     devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :bio])
   end


end
