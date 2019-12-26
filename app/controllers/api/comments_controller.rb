class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render "index.json.jb"
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    comment = Comment.new(
        text: params["text"],
        post_id: params["post_id"],
        user_id: params["user_id"]
    )
    if comment.save
      render json: {message: "comment created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {message: "comment deleted"}
  end
end
