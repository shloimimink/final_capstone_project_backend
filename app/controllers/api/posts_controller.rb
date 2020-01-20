class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def show
    @post = Post.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @post = Post.new(
        text: params["text"],
        user_id: current_user.id,
        airplane_id: params["airplane_id"]
    )
    if @post.save
      render "show.json.jb"
    else
      render json: {errors: @post.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    #post = Post.find_by(id: params[:id])
    post = current_user.posts.find_by(id: params[:id])
    post.destroy
    render json: {message: "post successfully deleted"}
  end
end
