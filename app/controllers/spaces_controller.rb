class SpacesController < ApplicationController
  def index
    @spaces = Organization.find_by(id: params[:organization_id]).spaces
    @organization = Organization.find(params[:organization_id])
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @space = Space.new
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @space = @organization.spaces.new( space_params )
      if @space.save
        redirect_to organization_space_path(@organization, @space)
      else
        render 'new'
      end
  end


  def edit
    @organization = Organization.find(params[:organization_id])
    @space = Space.find(params[:id])
  end


  def update
    @space = Space.find(params[:id])
    if @space.update(space_params)
      redirect_to organization_spaces_path
    else
      render 'edit'
    end

  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to organization_spaces_path
  end

  def all_spaces
    @spaces = Space.all
  end

  private

  def space_params
    params.require(:space).permit(:img, :title, :guidelines, :organization_id)
  end
end
