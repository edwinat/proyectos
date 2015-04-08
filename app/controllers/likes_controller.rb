class LikesController < ApplicationController
  def dar_like
  	@like=@like+1
  end

  def create
  	@post=Post.find(params[:post_id])
  	@like=@post.like.build(params[:text])
  	@like.save

  	redirect_to @post
  end

  private
  def like_params
    params.require(:like).permit(:like, :post_id)
  end
end
