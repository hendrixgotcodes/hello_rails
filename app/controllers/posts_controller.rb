class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    post_id = params[:id]
    @post = Post.find(post_id)
  end
  
end
