class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.create(post_params)

    User.all.find_by(params[:id] == @post.user_id)

    if @post.valid?
      redirect_to user_path(@post.user_id)
    else
      redirect_to new_post_path
    end

  end

  private

  def post_params
    params.require(:post).permit(:user_id, :item_id)
  end

end
