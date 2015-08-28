class SessionsController < ApplicationController

  def create
  	if Artist.find_by(email: params[:session][:email]).present?
  		user = Artist.find_by(email: params[:session][:email])
  		if user && user.authenticate(params[:session][:password])
  			session[:user_id] = user.id
  			redirect_to artist_path(user)
  		else
  			redirect_to '/login'
  		end
  	elsif Organization.find_by(email: params[:session][:email]).present?
  		user = Organization.find_by(email: params[:session][:email])
  		if user && user.authenticate(params[:session][:password])
  			session[:user_id] = user.id
  			redirect_to organization_path(user)
  		else
  			redirect_to '/login'
  		end
  	else
 		flash.now[:danger] = 'Invalid email/password combination'
 		redirect_to '/login'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/login'
  end

end
