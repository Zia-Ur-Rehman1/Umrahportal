class HotelsController < ApplicationController

  def index
    @makkah_hotels = Hotel.where(city: 0).includes(:rooms)
    @madina_hotels = Hotel.where(city: 1).includes(:rooms)
    
    render json: {
      makkah_hotels: @makkah_hotels.as_json(include: :rooms),
      madina_hotels: @madina_hotels.as_json(include: :rooms)
    }
  end
  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
