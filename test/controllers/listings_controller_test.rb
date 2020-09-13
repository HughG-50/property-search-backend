require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url, as: :json
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { address: @listing.address, agency_name: @listing.agency_name, agent: @listing.agent, display_price: @listing.display_price, domain_listing_id: @listing.domain_listing_id, headline_desc: @listing.headline_desc, land_area: @listing.land_area, listing_url: @listing.listing_url, summary_desc: @listing.summary_desc } }, as: :json
    end

    assert_response 201
  end

  test "should show listing" do
    get listing_url(@listing), as: :json
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { address: @listing.address, agency_name: @listing.agency_name, agent: @listing.agent, display_price: @listing.display_price, domain_listing_id: @listing.domain_listing_id, headline_desc: @listing.headline_desc, land_area: @listing.land_area, listing_url: @listing.listing_url, summary_desc: @listing.summary_desc } }, as: :json
    assert_response 200
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing), as: :json
    end

    assert_response 204
  end
end
