class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
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

  private

  def post_params
    params.require(:post)
      .permit(:title, :body)
  end
end
