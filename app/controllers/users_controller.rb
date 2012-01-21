class UsersController < ApplicationController
  def new
    @title = "Sign up"
  end

  def index
  	@users = User.all

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
  	@user = User.find(params[:id])
    @title = @user.name
  end

end
