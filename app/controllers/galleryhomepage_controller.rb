class GalleryhomepageController < ApplicationController
  def index
    @scenes = Space.all.sample(3)
  end
end
