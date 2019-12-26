class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def show
    @image = Image.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    image = Image.new(
        url: params["url"],
        airplane_id: params["airplane_id"],
        user_id: params["user_id"]
    )
    if image.save
      render json: {message: "image created successfully"}
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: {message: "image deleted"}
  end
end
