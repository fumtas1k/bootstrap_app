class TopsController < ApplicationController
  def index
  end
  def top
    @blogs = Blog.all.order(created_at: :desc)
  end
end
