class Piece < ActiveRecord::Base
  belongs_to :artist
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
