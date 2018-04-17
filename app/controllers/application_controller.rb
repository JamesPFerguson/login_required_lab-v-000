class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def require_login
    redirect_to 'sessions/new' unless session.include? :user_id
  end

  def current_user
    session[:name]
  end
  
end
