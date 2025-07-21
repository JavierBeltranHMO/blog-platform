class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @blog=Blog.friendly.find(params[:blog_id])
    @comment=@blog.comments.new(comment_params)
    @comment.user=current_user

    if @comment.save
      redirect_to blog_path(@blog), notice: "Comment posted."
    else
      redirect_to blog_path(@blog), alert: "Fail to post comment."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :parent_id)
  end
end
