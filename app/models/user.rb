class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  belongs_to :airline, optional: true

  has_many :airplane_users
  has_many :airplanes, through: :airplane_users

  has_many :images
  has_many :posts
  has_many :comments
end
