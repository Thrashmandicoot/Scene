class GalleryhomepageController < ApplicationController
  def index
    @random_pieces = Piece.all.sample(5).to_json
  end

  def api
    @random_pieces = Piece.all.sample(5)
  	render json: @random_pieces
  end
end
