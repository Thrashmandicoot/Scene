class Organization < ActiveRecord::Base
  has_many :orgscenes
  has_secure_password
end
