class Airplane < ApplicationRecord
  has_many :airplane_users
  has_many :users, through: :airplane_users

  has_many :airline_airplanes
  has_many :airlines, through: :airline_airplanes

  has_many :posts
  has_many :images
end
