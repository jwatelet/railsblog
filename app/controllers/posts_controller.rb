class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to root_path if @post.valid?
    redirect_to new_post_path, @post.errors
  end

  private
  def post_params
    params.require(:post).permit(:text, :image, :user_id)
  end
end
