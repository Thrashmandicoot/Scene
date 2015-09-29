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

  def current_user
    if Artist.find_by_id(session[:artist_id])
      @current_user ||= Artist.find_by_id(session[:artist_id])
    elsif Organization.find_by_id(session[:organization_id])
      @current_user ||= Organization.find_by_id(session[:organization_id])
    end
  end

end
