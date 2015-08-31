module TagsHelper
  def pull_tags(pieces)
    @tags = []
    pieces.each do |piece|
      piece.tag_list.each do |tag|
        @tags << tag
      end
    end
    @tags.uniq!
  end

end
