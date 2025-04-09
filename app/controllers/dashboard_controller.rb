class DashboardController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def my_questions
  end

  def my_answers
  end
end
