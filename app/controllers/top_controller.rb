class TopController < ApplicationController
  def show
    @carousel_images = MakingTool.carousel_images
  end
end
