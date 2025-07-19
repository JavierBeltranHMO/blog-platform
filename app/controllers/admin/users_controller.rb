class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!

  before_action :set_user, only: [ :destroy_with_password, :confirm_destroy, :toggle_role ]
  def index
    @users=User.includes(:blogs).all
  end

  def destroy_with_password
    if current_user.valid_password?(params[:password])
      @user.destroy
      redirect_to admin_users_path, notice: "User deleted succesfully."
    else
      redirect_to confirm_destroy_admin_user_path(@user), alert: "Incorrect password"
    end
  end

  def confirm_destroy
    @user
  end

  def toggle_role
    if @user != current_user
      @user.update(role: @user.admin? ? "user" : "admin")
      redirect_to admin_users_path, notice: "User role updated"
    else
      redirect_to admin_users_path, alert: "You can't change your own role"

    end
  end

  private

  def set_user
    @user=User.friendly.find(params[:id])
  end

  def authorize_admin!
    redirect_to root_path, alert: "Not authorized" unless current_user.admin?
  end
end
