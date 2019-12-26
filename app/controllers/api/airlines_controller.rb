class Api::AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
    render "index.json.jb"
  end
end
