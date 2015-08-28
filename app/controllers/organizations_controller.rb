class OrganizationsController < ApplicationController
  def index
  end

  def show
    @organization = Organization.find(params[:id])
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
      redirect_to organizations_path
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :email, :password, :address, :facebook, :twitter, :website, :bio, :avatar)
  end
end
