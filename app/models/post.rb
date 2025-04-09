class Post < ApplicationRecord
  include AASM

  belongs_to :user

  scope :by_user, -> (user_id) { where(user_id: user_id) if user_id.present? }

  def self.search(params)
    search_posts = self.all
    search_posts
      .by_user(params[:user_id])
      .order(id: :desc)
      .limit(50)
  end

  aasm column: :status do
    state :locked, initial: true
    state :unlocked

    event :unlock do
      transitions from: :locked, to: :unlocked
    end
  end
end
