class GalleryhomepageController < ApplicationController
  def index
    pieces = Piece.all.sample(5) + Space.all.sample(5)
    @random_pieces = pieces.to_json
  end
end
