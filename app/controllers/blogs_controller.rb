class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :destroy]
  def index
    @blogs = Blog.all.order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def confirm
  end

  def edit
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end
end
