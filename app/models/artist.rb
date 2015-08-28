class Artist < ActiveRecord::Base
  has_many :pieces
  has_secure_password
end
