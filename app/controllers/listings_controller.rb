class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  # GET /listings
  def index
    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/ryde
  def ryde_index 
    Listing.populate_ryde_listings

    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/strathfield
  def strathfield_index 
    Listing.populate_strathfield_listings

    @listings = Listing.all

    render json: @listings
  end

end
