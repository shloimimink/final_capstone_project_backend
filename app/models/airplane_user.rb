class AirplaneUser < ApplicationRecord
  belongs_to :airplane
  belongs_to :user

  def images
    Image.where(user_id: user_id, airplane_id: airplane_id)
  end

  def posts
    Post.where(user_id: user_id, airplane_id: airplane_id)
  end
end
