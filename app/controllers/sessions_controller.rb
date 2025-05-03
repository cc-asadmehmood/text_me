class SessionsController < ApplicationController
  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.find_by(email: params[:email])
  #   if @user&.authenticate(params[:password])
  #     session[:user_id] = @user.id
  #     flash[:success] = "Welcome back, #{@user.name}!"
  #     redirect_to root_path
  #   else
  #     flash.now[:error] = "Invalid email or password"
  #     render :new
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   flash[:success] = "Logged out successfully"
  #   redirect_to root_path
  # end
end
