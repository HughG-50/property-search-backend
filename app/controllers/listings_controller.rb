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

  # GET /listings/parramatta
  def parramatta_index 
    Listing.populate_parramatta_listings

    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/burwood
  def burwood_index 
    Listing.populate_burwood_listings

    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/canada_bay
  def canada_bay_index 
    Listing.populate_canada_bay_listings

    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/inner_west
  def inner_west_index 
    Listing.populate_inner_west_listings

    @listings = Listing.all

    render json: @listings
  end

  # GET /listings/canterbury
  def canterbury_index 
    Listing.populate_canterbury_listings

    @listings = Listing.all

    render json: @listings
  end

end
