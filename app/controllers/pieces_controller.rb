class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def show
    @artist = Artist.find_by(id: params[:artist_id])
    @piece = Piece.find_by(artist_id: params[:artist_id])
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
end
