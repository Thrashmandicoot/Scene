class GalleryhomepageController < ApplicationController
  def index
  end

  def api
    @pieces = Piece.all.sample(5) + Space.all.sample(5)
  	render json: @pieces
  end
end
