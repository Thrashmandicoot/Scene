class PiecesController < ApplicationController
  def all_pieces
    @pieces = Piece.all
    @tags = []
    @pieces.each do |piece|
      piece.tag_list.each do |tag|
        @tags << tag
      end
    end
    @tags.uniq!
  end

  def index
    @artist = Artist.find(params[:artist_id])
    @pieces = @artist.pieces
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
    @piece = @artist.pieces.new(piece_params)
    if @piece.save
      @piece.tag_list.add(params[:tag_list])
      redirect_to artist_piece_path(@artist, @piece)
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    if @piece.update(piece_params)
      redirect_to artist_piece_path(@piece.artist_id, @piece)
    else
      render 'edit'
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to artist_pieces_path
  end

  # FIGURE OUT HOW TO PASS IN PARAMS
  # def api_piece
  #   @artist = Artist.find_by(id: params[:artist_id])
  #   @piece = Piece.find_by(artist_id: params[:artist_id])
  #   p "************************"
  #   p params
  #   render json: @piece
  # end

  private
  def piece_params
    params.require(:piece).permit(:img, :title, :description, :tag_list)
  end
end

# add and remove multiple tags in an array
# @user.tag_list.add("graffiti", "awesome")
# @user.tag_list.remove("graffiti", "awesome")
# @user.tag_list to return of tag.names
# @user.tags to return tag objects

# add skills to artist
# @artist.skill_list = "spray paint, acryllic, oil"
# @artist.save
# @artist.skills => ['spray paint', acryllic, oil]

# finding tagged objects
# @piece.tagged_with(['tag_name, tag_name2']) returns objects
