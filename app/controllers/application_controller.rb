class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
private

def current_user
  return nil unless session[:steamuser_id]
  @current_user ||= SteamUser.find_by(id: session[:steamuser_id])
end
 
helper_method :current_user


end
