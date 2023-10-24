class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You are successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'There is something wrong with the login information'
      render action: :new, status: :unprocessable_entity
    end
  end
end
