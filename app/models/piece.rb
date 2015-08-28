class Piece < ActiveRecord::Base
  belongs_to :artist
  has_many :categories
  has_many :tags, through: :categories
end
