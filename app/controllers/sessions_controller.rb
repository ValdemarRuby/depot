class SessionsController < ApplicationController
  skip_before_action :authorize

  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url(locale: params[:set_locale])
    else
      redirect_to login_url, notice: 'Wrong username or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Work session is over"
  end
end
