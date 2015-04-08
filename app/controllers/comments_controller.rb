class CommentsController < ApplicationController
  def create
  	@post=Post.find(params[:post_id])
  	@comment=@post.comments.build(params[:text])
  	@comment.save

  	redirect_to @post
  end

  def show
  end

private
  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
  
end
