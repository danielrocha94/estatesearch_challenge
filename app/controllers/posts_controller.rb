class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: [:unlock, :pay]

  def index
    @posts = Post.search(search_params)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def new_form
  end

  def create
    @post = current_user.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html {redirect_to my_questions_path }
        format.turbo_stream {}
      end
    end
  end

  def delete
  end

  def unlock
    @post.unlock!

    respond_to do |format|
      if @post.unlocked?
        format.turbo_stream {}
      end
    end
  end

  def pay
  end

  private

  def post_params
    params.require(:post)
      .permit(:title, :body)
  end

  def search_params
    {user_id: params[:user_id]}
  end

  def find_post
    @post = current_user.posts.find(params[:id])
  end
end
