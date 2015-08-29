class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def show
    @artist = Artist.find_by(id: params[:artist_id])
    @piece = Piece.find_by(artist_id: params[:artist_id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    # @piece = @artist.pieces.new(img: params[:img], title: params[:title], description: params[:description])
    @piece = @artist.pieces.new(piece_params)
    if @piece.save
      redirect_to artist_piece_path(@artist, @piece)
    else
      render 'new'
    end
  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    if @piece.updates(piece_params)
      redirect_to artist_piece_path(@piece)
    else
      render 'edit'
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to artist_pieces_path
  end

  private
  def piece_params
    params.require(:piece).permit(:img, :title, :description)
  end
end
