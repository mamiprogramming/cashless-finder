class VenuesController < ApplicationController
  def index
    @venue = Venue.all
  end

  def new
    @venue = Venue.new
    @prefecture = Prefecture.all
  end

  def create
    @venue = current_user.venues.build(venue_params)
    if @venue.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end
  
  private

  def venue_params
    params.require(:venue).permit(:place_name, :prefecture_id, :user_id)
  end
end