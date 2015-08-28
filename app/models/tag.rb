class Tag < ActiveRecord::Base
  has_many :categories
  has_many :pieces, through: :categories
end
