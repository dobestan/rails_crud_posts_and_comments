class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  # new -> create
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
