class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @events = @user.events
  end
  def new
    @user = User.new
    # @address = @user.build_address
  end
  def create
    User.create(user_params)
    if @user.save
      render 'show'
    else
      render 'new'
    end
  end
end
