class TagsController < ApplicationController
  include TagsHelper
  def show
    pieces = Piece.all
    @pieces = []
    pieces.each do |piece|
      (@pieces << piece) if piece.tag_list.include?(params[:id])
    end
    @tag = params[:id]
    pull_tags(pieces)
    @pieces
  end
end
