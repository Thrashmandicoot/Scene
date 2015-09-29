class SessionsController < ApplicationController
  def create
    if Artist.find_by(email: params[:session][:email]).present?
      @user = Artist.find_by(email: params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:artist_id] = @user.id
        redirect_to artist_path(@user)
      else
        # render json: "{error: 'Invalid email/password combination'}"
        redirect_to root_path
      end

    elsif Organization.find_by(email: params[:session][:email]).present?
      @user = Organization.find_by(email: params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:organization_id] = @user.id
        redirect_to organization_path(@user)
      else
        # render json: "{error: 'Invalid email/password combination'}"
        redirect_to root_path
      end
    else
      # render json: "{error: 'Invalid email/password combination'}"
      redirect_to root_path
    end
  end

  def destroy
    if session[:artist_id]
      session[:artist_id] = nil
    else
      session[:organization_id] = nil
    end
    redirect_to root_path
  end
end
