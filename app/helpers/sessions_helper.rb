module SessionsHelper

	# Don't use this, it's non-functional
  def login(user)
		session[:user_id] = user.id
	end

  # def logged_in?
  #   !(params[:user_id] == nil)
  # end

def current_user
    if Artist.find_by_id(session[:artist_id])
      @current_user ||= Artist.find_by_id(session[:artist_id]) if session[:artist_id]
    elsif Organization.find_by_id(session[:organization_id])
      @current_user ||= Organization.find_by_id(session[:organization_id]) if session[:organization_id]
    end
  end
end
