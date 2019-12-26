class AirlineAirplane < ApplicationRecord
  belongs_to :airline
  belongs_to :airplane
end
