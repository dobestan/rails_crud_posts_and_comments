class PostsController < ApplicationController
  def index
  end

  # new -> create
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
