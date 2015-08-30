class TagsController < ApplicationController

  def show

    pieces = Piece.all
    @pieces = []
    pieces.each do |piece|
      (@pieces << piece) if piece.tag_list.include?(params[:id])
    end
    @tag = params[:id]
    @pieces
  end


end
