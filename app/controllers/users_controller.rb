class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user=User.find(params[:id])
  end

  def cancel_account
    delete_blogs=params[:delete_blogs]=="1"
    if delete_blogs
      current_user.blogs.destroy_all
    end
    current_user.destroy
    redirect_to root_path, notice: "Your account was deleted succesfully."
  end
end
