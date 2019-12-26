class Post < ApplicationRecord
  belongs_to :user
  belongs_to :airplane
  has_many :comments
end
