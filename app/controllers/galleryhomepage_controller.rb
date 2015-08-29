class GalleryhomepageController < ApplicationController
  def index
  	@random_pieces = Piece.all.sample(5)
  	@random_scenes = Space.all.sample(5)
  	@gallery_images = Piece.all
  end
end
