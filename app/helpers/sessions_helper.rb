module SessionsHelper

	def login(user)
		session[:user_id] = user.id
	end

  # def logged_in?
  #   !(params[:user_id] == nil)
  # end

def current_user
    if Artist.find_by_id(session[:user_id])
      @current_user ||= Artist.find_by_id(session[:user_id]) if session[:user_id]
    elsif Organization.find_by_id(session[:user_id])
      @current_user ||= Organization.find_by_id(session[:user_id]) if session[:user_id]
    end
  end

end
