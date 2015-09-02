class GalleryhomepageController < ApplicationController
  def index
    @pieces = Piece.all.sample(3)
    @scenes = Space.all.sample(3)
  end
end
