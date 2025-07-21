class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!
  def index
    @users =User.all
    @q=Blog.ransack(params[:q])
    @blogs=@q.result.includes(:user)
  end

  private
  def authorize_admin!
    redirect_to root_path, alert: "Not authorized" unless current_user.admin?
  end
end
