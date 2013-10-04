class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post].permit!
    if @post.save
      redirect_to post_path(@post)
    else
      raise "ERROR"
    end
  end

  def show
    @post = Post.find params[:id]
  end

  def index
    @posts = Post.all
  end
end
