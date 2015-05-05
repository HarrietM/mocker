class TweetsController < ApplicationController

  def index
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = User.find(current_user.id)
  end

  def create
    tweet = Tweet.create(tweet_params) #add strong params
    current_user.tweets << tweet
    redirect_to '/'
  end

  def destroy
    tweet = Tweet.destroy(params[:id])
    redirect_to '/'
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

end