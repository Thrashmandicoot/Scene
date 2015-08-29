class OrgscenesController < ApplicationController
  def index
   @scenes = OrgScene.all
  end

  def show
    puts params
    @scene = OrgScene.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def scene_params
    params.require(:OrgScene).permit(:img, :title, :guidelines, :organization_id)
  end
end
