class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    # @comment = Comment.new(comment_params)
    @comment = @post.comments.create(comment_params)
    @comment.save
    
    redirect_to @post
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
