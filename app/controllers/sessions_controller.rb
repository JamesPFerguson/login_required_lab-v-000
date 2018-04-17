class SessionsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    session[:username] = params[:username]
    redirect to '/'
  end






end