class SessionController < ApplicationController

    def new
  end

  def create
    user = User.find_by :name => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:notice] = "Invalid login, please try again."
      redirect_to login_path
    end
  end

  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path

  end

end
