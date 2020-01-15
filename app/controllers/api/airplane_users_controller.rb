class Api::AirplaneUsersController < ApplicationController
  def index
    @airplane_users = current_user.airplane_users
    render "index.json.jb"
  end

  def show
    @airplane_user = AirplaneUser.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @airplane_user = AirplaneUser.new(
        airplane_id: params["airplane_id"],
        user_id: current_user.id,
    )
    if @airplane_user.save
      render "show.json.jb"
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @airplane_user = AirplaneUser.find_by(id: params["id"])
    @airplane_user.airplane_id = params["airplane_id"] || @airplane_user.airplane_id
    #@airplane_user.user_id = params["user_id"] || @airplane_user.user_id
    @airplane_user.save
    render "show.json.jb"
  end

  def destroy
    airplane_user = AirplaneUser.find_by(id: params[:id])
    airplane_user.destroy
    render json: {message: "airplane_user deleted"}
  end
end
