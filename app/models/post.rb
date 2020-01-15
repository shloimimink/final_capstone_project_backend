class Post < ApplicationRecord
  belongs_to :user
  belongs_to :airplane
  has_many :comments

  def favorite
    AirplaneUser.find_by(user_id: user.id, airplane_id: airplane.id)
  end
end
