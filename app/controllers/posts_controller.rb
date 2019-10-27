class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to root_path 
    else
      redirect_to new_post_path, @post.errors
    end
  end

  private
  def post_params
    params.require(:post).permit(:text, :image, :user_id)
  end
end
