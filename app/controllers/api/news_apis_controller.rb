class Api::NewsApisController < ApplicationController
  def index
    url = URI.parse("https://newsapi.org/v2/everything?language=en&q=#{params[:search]}&apiKey=#{ENV["NEWS_API_KEY"]}")
    response = HTTP.get(url)
    news = response.parse
    render json: news["articles"][0..4]
  end
end
