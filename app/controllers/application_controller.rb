# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.


class ApplicationController < ActionController::Base

  protect_from_forgery

  helper :all
  helper_method :logged_in?, :current_user_session, :current_user
  filter_parameter_logging :password, :password_confirmation

protected    

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end 

  def current_user
    @current_user ||= current_user_session and current_user_session.user
  end 

  def current_user_session
    @current_user_session ||= UserSession.find
  end 

  def logged_in?
    not current_user.nil?
  end 

  def require_user
    unless logged_in?
      store_location
      flash[:notice] = 'Please login in to access this page!'
      redirect_to new_user_session_url
      return false
    end
  end

  def require_no_user
    if logged_in?
      store_location
      flash[:notice] = 'Please logout to access this page!'
      redirect_to user_url
      return false
    end
  end

end
