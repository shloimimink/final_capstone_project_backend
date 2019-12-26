class Airline < ApplicationRecord
  has_many :airline_airplanes
  has_many :airplanes, through: :airline_airplanes

  has_many :users
end
