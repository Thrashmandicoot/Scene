class OrganizationsController < ApplicationController
  def index
  end

  def show
    @organization = Organization.find(params[:id])
    @spaces = @organization.spaces
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render 'new'
    end
  end

  def edit
    @organization = Organization.find_by(id: params[:id])
  end

  def update
    @organization = Organization.find_by(id: params[:id])
    if @organization.update(organization_params)
      redirect_to organization_path
    else
      render 'edit'
    end
  end

  def destroy
    @organization = Organization.find_by(id: params[:organization_id])
    @organization.destroy
    redirect_to root_path
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :email, :password, :address, :facebook, :twitter, :website, :bio, :avatar)
  end
end
