module SessionsHelper

	def login(user)
		session[:user_id] = user.id
	end

  def logged_in?
    !(params[:session] == nil)
  end

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

end
