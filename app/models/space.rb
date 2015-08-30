class Space < ActiveRecord::Base
  belongs_to :organization
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
