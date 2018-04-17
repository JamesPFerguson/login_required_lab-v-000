class SecretsController < ApplicationController







  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end