class PhotosController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    
    redirect_to place_path(@place)
  end


end
