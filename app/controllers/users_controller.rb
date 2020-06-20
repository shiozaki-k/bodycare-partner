class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events
  end
  def new
    @user = User.new
    @address = @user.build_address
  end
  def create
    User.create(user_params)
  end
end
