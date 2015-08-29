class Organization < ActiveRecord::Base
  has_many :spaces
  has_secure_password
end
