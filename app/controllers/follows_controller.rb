class FollowsController < ApplicationController

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