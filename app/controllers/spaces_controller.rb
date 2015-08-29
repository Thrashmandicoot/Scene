class SpacesController < ApplicationController
  def create
  end

  def destroy
  end

  def edit
  end

  def index
    @spaces = Organization.find_by(id: params[:organization_id]).spaces
  end

  def new
  end

  def show
    @space = Space.find(params[:id])
  end

  def update
  end

  def space_params
    params.require(:space).permit(:img, :guidelines, :organization_id)
  end

  def all_spaces
    @spaces = Space.all
  end
end
