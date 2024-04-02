class VenuesController < ApplicationController
  before_action :move_to_index, except: [:search]

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
    @comments = @venue.comments
  end

  def edit
    @venue= Venue.find(params[:id])
  end

  def update
    @venue= Venue.find(params[:id])
    if @venue.update(venue_params)
       redirect_to venue_path(@venue)
    else
      render :edit
    end
  end

  def search
    query = params[:query]
    @venues = Venue.where("place_name LIKE ?", "%#{query}%")
  end

  private

  def venue_params
    params.require(:venue).permit(:place_name, :prefecture_id, :user_id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end