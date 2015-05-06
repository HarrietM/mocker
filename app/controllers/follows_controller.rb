class FollowsController < ApplicationController

  def index
    @followees = current_user.followees
    render json: @followees.to_json(only: [:username, :id])
  end

  def show
    followee = User.find(params[:user_id])
    @followee_tweets = followee.tweets
  end

  def create
    followee = User.find(params[:user_id])
    current_user.followees << followee
    redirect_to '/'
  end

  def destroy
    followee = User.find(params[:id])
    current_user.followees.destroy(followee)
    redirect_to '/'
  end

end