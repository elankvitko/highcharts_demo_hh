class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
       current_user.present?
    end

  helper_method :logged_in?, :current_user
end