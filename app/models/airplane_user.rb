class AirplaneUser < ApplicationRecord
  belongs_to :airplane
  belongs_to :user
end
