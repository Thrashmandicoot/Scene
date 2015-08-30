module ArtistsHelper
  def find_artist_tags(artist)
    @tags = []
    artist.pieces.each do |piece|
      piece.tag_list.each do |tag|
        @tags << tag
      end
    end
    @tags.uniq!
  end

end
