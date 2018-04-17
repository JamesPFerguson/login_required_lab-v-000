class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to '/'
    else
    session[:name] = params[:name]
    redirect to secret_path
    end
  end

  def destroy
    session.delete :name
  end

  


end