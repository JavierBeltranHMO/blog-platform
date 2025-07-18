class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [ :avatar, :user_name ])
    devise_parameter_sanitizer.permit(:sign_ip, keys: [ :avatar, :user_name ])
  end

  # Pundit
  include Pundit::Authorization
  # Error handling
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  private
  def user_not_authorized
    flash[:alert]="You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
