class Api::AirplanesController < ApplicationController
  def index
    @airplanes = Airplane.all
    render "index.json.jb"
  end
end
