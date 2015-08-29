class ArtistsController < ApplicationController
  def index
  end

  def show
    @artist = Artist.find(1)
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
