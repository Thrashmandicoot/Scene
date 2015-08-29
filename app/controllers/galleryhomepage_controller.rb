class GalleryhomepageController < ApplicationController
  def index
  	@random_pieces = Piece.all.sample(5)
  	@random_scenes = Orgscene.all.sample(5)
  	@gallery_images = Piece.all
  end
end
