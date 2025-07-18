class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user=User.friendly.find(params[:id])
  end
  def cancel_account
    delete_blogs=params[:delete_blogs]=="1"
    user=current_user
    if user.valid_password?(params[:current_password])
      user.blogs.destroy_all if delete_blogs
      user.destroy
      sign_out user
      redirect_to root_path, notice: "Your account was deleted succesfully."
    else
      redirect_to root_path, alert: "Incorrect password, account not deleted"
    end
  end
end
