class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:username].nil? || session[:username].empty?
      redirect_to new_session_path
    else
    session[:username] = params[:username]
    redirect to show_secret_path
    end
  end


  


end