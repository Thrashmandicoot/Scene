class Piece < ActiveRecord::Base
  belongs_to :artist
  acts_as_taggable
  acts_as_taggable_on :skills, :interests

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
