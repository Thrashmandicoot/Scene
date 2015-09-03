class GalleryhomepageController < ApplicationController
  def index
    @scenes = Space.all.sample(4)
  end
end
