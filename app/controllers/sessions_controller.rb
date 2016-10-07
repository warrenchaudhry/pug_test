class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
    if logged_in?
      redirect_to dashboards_path
      return
    end
  end

  def create
    user = login_user
    if user
      flash[:success] = 'Welcome back!'
      redirect_back_or_to dashboards_path
    else
      flash.now[:warning] = 'E-mail and/or password is incorrect.'
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = 'You have been logged out!'
    redirect_to login_path
  end

  private
  def login_user
    login(params[:user][:email], params[:user][:password])
  end
end
