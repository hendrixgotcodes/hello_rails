class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    post_id = params[:id]
    @post = Post.find(post_id)
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new, status: unprocessable_entity
    end
  end

  private
    def post_params
      params.require(:post).permit(:title,:body)
    end
  
end
