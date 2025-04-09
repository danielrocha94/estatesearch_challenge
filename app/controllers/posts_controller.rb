class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def new_form
  end

  def delete
  end
end
