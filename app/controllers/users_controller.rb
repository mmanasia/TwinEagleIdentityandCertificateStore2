class UsersController < ApplicationController
  def show
    @user = User.find(params[:email])
  end

  def index
    @users = User.all
  end

end
l