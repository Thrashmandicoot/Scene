class GalleryhomepageController < ApplicationController
  def index
    all = Space.all
    @scenes = all[0...-8].sample(4)
  end
end
