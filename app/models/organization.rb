class Organization < ActiveRecord::Base
  has_many :spaces
  has_secure_password
  geocoded_by :address
  after_validation :geocode
end
