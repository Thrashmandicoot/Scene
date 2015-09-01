class Artist < ActiveRecord::Base
  has_many :pieces
  has_secure_password
  validates :email, presence: true
  validates :password, length: { minimum: 6 }
  geocoded_by :address
  after_validation :geocode
end
