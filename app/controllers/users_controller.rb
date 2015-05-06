class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @tweets = User.find(current_user.id).tweets
    render json: @tweets
  end
end
