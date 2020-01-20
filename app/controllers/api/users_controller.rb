class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    user = User.new(
        name: params["name"],
        email: params["email"],
        password: params["password"],
        password_confirmation: params["password_confirmation"],
        phone: params["phone"],
        profile_picture: params["profile_picture"],
        location: params["location"],
        seat_preference: params["seat_preference"],
        class_preference: params["class_preference"],
        airport_preference: params["airport_preference"]
    )
    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params["id"])
    if @user == current_user
      @user.name = params["name"] || @user.name
      @user.email = params["email"] || @user.email
      @user.phone = params["phone"] || @user.phone
      @user.profile_picture = params["profile_picture"] || @user.profile_picture
      @user.location = params["location"] || @user.location
      @user.seat_preference = params["seat_preference"] || @user.seat_preference
      @user.class_preference = params["class_preference"] || @user.class_preference
      @user.airport_preference = params["airport_preference"] || @user.airport_preference
      @user.airline_id = params["airline_id"] || @user.airline_id
      @user.save
      render "show.json.jb"
    else
      render json: {message: "Unauthorized"}, status: :unauthorized
    end
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    render json: {message: "user successfully deleted"}
  end
end
