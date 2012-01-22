class UsersController < ApplicationController
  def new
    @user = User.new
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

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Elusive Hippo!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
