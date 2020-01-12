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
    if params[:image_file]
      response = Cloudinary::Uploader.upload(params[:image_file])
      cloudinary_url = response["secure_url"]
    else
      cloudinary_url = nil
    end

    @image = Image.new(
        url: cloudinary_url,
        airplane_id: params["airplane_id"],
        user_id: current_user.id
    )
    if @image.save
      render "show.json.jb"
    else
      render json: {errors: @image.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    #image = Image.find_by(id: params[:id])
    image = current_user.images.find_by(id: params[:id])
    image.destroy
    render json: {message: "image deleted"}
  end
end
