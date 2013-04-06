class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@image_url = @user.authentications.first.image_url

  end

  def edit
  end

  
end
