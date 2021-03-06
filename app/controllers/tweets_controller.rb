class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]

  def index
    # @tweets = Tweet.includes(:user).order("created_at DESC")
    query = "SELECT * FROM tweets"
    @tweets = Tweet.find_by_sql(query)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
  end

  private

  def tweet_params
    params.require(:tweet).permit(:place, :image, :text, :genre_id, :with_id, :how_id, :way).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end
