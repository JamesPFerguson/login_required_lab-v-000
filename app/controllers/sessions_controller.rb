class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:username].nil? || session[:username].empty?
      redirect_to login_path
    else
    session[:username] = params[:username]
    redirect to secret_path
    end
  end


  


end