class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [ :new, :create ]

  def index
    # @user = User.all
  end

  def show
    # @user = User.find(params[:id])
  end
  def new
    # @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome back, #{@user.username}!"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out successfully"
    redirect_to login_path
  end

  private
  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in."
      redirect_to root_path
    end
  end
end
