class DashboardController < ApplicationController
  before_action :authenticate_user!

  def home
    @posts = Post.all
  end

  def my_questions
  end

  def my_answers
  end
end
