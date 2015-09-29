class SpacesController < ApplicationController
  def all_spaces
    @spaces = Space.all
    half = @spaces.length
    @first_half = @spaces[0..half]
    @second_half = @spaces[half..-1]
  end

  def index
    @spaces = Organization.find_by(id: params[:organization_id]).spaces
    @organization = Organization.find(params[:organization_id])
  end

  def show
    @organization = Organization.find(params[:organization_id])
    @space = Space.find(params[:id])
    render partial: "partials/show_space", locals: { space: @space }
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @space = Space.new
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @artist = Artist.find_by(email: params[:artist_id])
    @space = Space.new( space_params )
      if @space.save
        @artist.spaces << @space
        @organization.spaces << @space
        redirect_to organization_space_path(@organization, @space)
      else
        render 'new'
      end
  end

  def edit
    @space = Space.find(params[:id])
    @organization = Organization.find(params[:organization_id])
  end

  def update
    @space = Space.find(params[:id])
    @organization = Organization.find(params[:organization_id])
    if @space.update(space_params)
      redirect_to organization_space_path(@organization, @space)
    else
      render 'edit'
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @organization = Organization.find(params[:organization_id])
    @space.destroy
    redirect_to organization_path(@organization)
  end

  private

  def space_params
    params.require(:space).permit(:img, :title, :description, :image)
  end
end
