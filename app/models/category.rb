class Category < ActiveRecord::Base
  belongs_to :tag
  belongs_to :piece
end
