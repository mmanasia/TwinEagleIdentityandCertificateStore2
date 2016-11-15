class UsersController < ApplicationController
  #before_filter :authenticate_admin!, :except => [:show]

  def show
    @user = User.find_by_username(params[:id])
  end

  def index
    @users = User.all
  end

end
l