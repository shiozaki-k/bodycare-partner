class StaffsController < ApplicationController
  def show
    @staffs = Staff.find(params[:id])
    @posts = @staff.posts
  end
end
