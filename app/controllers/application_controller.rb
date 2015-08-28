class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	if Artist.find(session[:user_id]).present?
    	@current_user ||= Artist.find(session[:user_id]) if session[:user_id] 
 	elsif Organization.find(session[:user_id])
    	@current_user ||= Organization.find(session[:user_id]) if session[:user_id] 
 	end
  end

   def authorize
    redirect_to '/login' unless current_user
   end
end
