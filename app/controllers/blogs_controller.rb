class BlogsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_blog, only: %i[ edit update destroy ]
  before_action :authorize_user!, only: %i[ edit update destroy ]

  # GET /blogs or /blogs.json
  def index
    @q = Blog.ransack(params[:q])
    # @blogs = @q.result(distinct: true)
    @blogs = @q.result

    case params[:sort]
    when "date_desc"
      @blogs=@blogs.order(created_at: :desc)
    when "date_asc"
      @blogs=@blogs.order(created_at: :asc)
    when "author_desc"
      @blogs=@blogs.left_outer_joins(:user).reorder(Arel.sql("users.user_name DESC NULLS LAST"))
    when "author_asc"
      @blogs=@blogs.left_outer_joins(:user).reorder(Arel.sql("users.user_name ASC NULLS LAST"))
    when "title_desc"
      @blogs=@blogs.order(title: :desc)
    when "title_asc"
      @blogs=@blogs.order(title: :asc)
    else
      @blogs=@blogs.order(created_at: :desc)
    end
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    @blog=Blog.friendly.find(params[:id])
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  def myblogs
    if current_user
      @blogs=current_user.blogs
    else
      redirect_to root_path
    end
  end

  # POST /blogs or /blogs.json
  def create
    @blog = current_user.blogs.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy!

    respond_to do |format|
      format.html { redirect_to blogs_path, status: :see_other, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    def authorize_user!
      unless @blog.user==current_user
        redirect_to blogs_path, alert: "You don't have permission to do that."
      end
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
