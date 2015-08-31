class GalleryhomepageController < ApplicationController
  def index
    @pieces = Piece.all.sample(5)
    @spaces = Space.all.sample(5)
  end

  def api
    @pieces = Piece.all.sample(5) + Space.all.sample(5)
  	render json: @pieces
  end
end
