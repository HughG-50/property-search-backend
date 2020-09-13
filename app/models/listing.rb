class Listing < ApplicationRecord

def self.populate_ryde_listings
    # Remove what was in database previously
    Listing.destroy_all

    endpoint = ""
    request = HTTParty.post()
    json = JSON.parse(request.body)

    if !json.nil?
        json.map do |json_item|
            if ((json_item["listing"]["headline"].downcase || json_item["listing"]["summaryDescription"].downcase).include? ("duplex"||"development"))
                listing = Listing.new
                listing.domain_listing_id = json_item["listing"]["id"]
                listing.address = json_item["listing"]["propertyDetails"]["displayableAddress"]
                listing.land_area = json_item["listing"]["propertyDetails"]["landArea"]
                listing.headline_desc = json_item["listing"]["headline"]
                listing.summary_desc = json_item["listing"]["summaryDescription"]
                listing.display_price = json_item["listing"]["priceDetails"]["displayPrice"]
                listing.agency_name = json_item["listing"]["advertiser"]["name"]
                listing.agent = json_item["listing"]["advertiser"]["contacts"][0]["name"]
                listing.save
            end
        end
    else 
        puts "Error with search API call"
    end

    listings = Listing.all
    for listing in listings 
        i_listing_endpoint = ".../#{listing.domain_listing_id}"
        request = HTTParty.get(i_listing_endpoint)
        json = JSON.parse(request.body)

        listing.listing_url = json["seoUrl"]
        listing.save
    end
end

def self.populate_strathfield_listings
    # same but without the condition string checking for "duplex" and "development"
end