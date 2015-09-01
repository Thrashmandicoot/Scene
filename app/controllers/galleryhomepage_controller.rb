class GalleryhomepageController < ApplicationController
  def index
    @pieces = Piece.all.sample(5) + Space.all.sample(5)
  end
end
