class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json(only: [:username, :id])
  end

  def show
    @tweets = User.find(current_user.id).tweets
    render json: @tweets
  end
end
