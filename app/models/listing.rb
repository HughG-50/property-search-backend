class Listing < ApplicationRecord

    def self.populate_ryde_listings
        # Remove what was in database previously
        Listing.destroy_all

        search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
        request = HTTParty.post(
            search_endpoint, 
            :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
            :body => {
                listingType: "Sale",
                propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
                minBedrooms: 0,
                minBathrooms: 0,
                minCarspaces: 0,
                minLandArea: 750,
                maxPrice: 2200000,
                pageSize: 100,
                sort: {
                  sortKey: "DateUpdated",
                  direction: "Ascending",
                },
                locations: [
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Eastwood",
                    postCode: "2122",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "East Ryde",
                    postCode: "2113",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Top Ryde",
                    postCode: "2122",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "West Ryde",
                    postCode: "2114",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "North Ryde",
                    postCode: "2113",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Ryde",
                    postCode: "2112",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Meadowbank",
                    postCode: "2114",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Marsfield",
                    postCode: "2122",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Macquarie Park",
                    postCode: "2113",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Putney",
                    postCode: "2112",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone",
                    postCode: "2114",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone West",
                    postCode: "2114",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone East",
                    postCode: "2112",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Gladesville",
                    postCode: "2111",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Tennyson Point",
                    postCode: "2111",
                    includeSurroundingSuburbs: false
                  },
                ]
            }.to_json
        )
        response_json = JSON.parse(request.body)
        save_json_url(response_json)
    end

    def self.populate_strathfield_listings
        Listing.destroy_all

        search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
        request = HTTParty.post(
            search_endpoint, 
            :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
            :body => {
                listingType: "Sale",
                propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
                minBedrooms: 0,
                minBathrooms: 0,
                minCarspaces: 0,
                minLandArea: 600,
                maxPrice: 2000000,
                pageSize: 100,
                sort: {
                  sortKey: "DateUpdated",
                  direction: "Ascending",
                },
                locations: [
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Strathfield",
                      postCode: "2135",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Strathfield South",
                      postCode: "2136",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Chullora",
                      postCode: "2190",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Flemington",
                      postCode: "2140",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Greenacre",
                      postCode: "2190",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Homebush",
                      postCode: "2140",
                      includeSurroundingSuburbs: false
                    },
                    {
                      state: "NSW",
                      region: "",
                      area: "",
                      suburb: "Homebush West",
                      postCode: "2140",
                      includeSurroundingSuburbs: false
                    },
                ]
            }.to_json
        )
        response_json = JSON.parse(request.body)
        save_json_url(response_json)
    end

    def self.populate_burwood_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
          search_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
          :body => {
              listingType: "Sale",
              propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
              minBedrooms: 0,
              minBathrooms: 0,
              minCarspaces: 0,
              minLandArea: 600,
              maxPrice: 2000000,
              pageSize: 100,
              sort: {
                sortKey: "DateUpdated",
                direction: "Ascending",
              },
              locations: [
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Burwood",
                    postCode: "2134",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Burwood Heights",
                    postCode: "2136",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Enfield",
                    postCode: "2136",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Enfield South",
                    postCode: "2133",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Croydon",
                    postCode: "2132",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Croydon Park",
                    postCode: "2133",
                    includeSurroundingSuburbs: false
                  },
              ]
          }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    def self.populate_canada_bay_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
          search_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
          :body => {
              listingType: "Sale",
              propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
              minBedrooms: 0,
              minBathrooms: 0,
              minCarspaces: 0,
              minLandArea: 600,
              maxPrice: 2000000,
              pageSize: 100,
              sort: {
                sortKey: "DateUpdated",
                direction: "Ascending",
              },
              locations: [
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Abbotsford",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Breakfast Point",
                    postCode: "2137",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Cabarita",
                    postCode: "2137",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Canada Bay",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Chiswick",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Concord",
                    postCode: "2137",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Concord West",
                    postCode: "2138",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Drummoyne",
                    postCode: "2047",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Fice Dock",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Liberty Grove",
                    postCode: "2138",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Mortlake",
                    postCode: "2137",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "North Strathfield",
                    postCode: "2137",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Rhodes",
                    postCode: "2138",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Rodd Point",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Russell Lea",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Wareemba",
                    postCode: "2046",
                    includeSurroundingSuburbs: false
                  },
              ]
          }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    def self.populate_inner_west_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
          search_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
          :body => {
              listingType: "Sale",
              propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
              minBedrooms: 0,
              minBathrooms: 0,
              minCarspaces: 0,
              minLandArea: 600,
              maxPrice: 2200000,
              pageSize: 100,
              sort: {
                sortKey: "DateUpdated",
                direction: "Ascending",
              },
              locations: [
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Annandale",
                    postCode: "2038",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Ashbury",
                    postCode: "2193",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Croydon",
                    postCode: "2132",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Dulwich Hill",
                    postCode: "2203",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Enmore",
                    postCode: "2042",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Haberfield",
                    postCode: "2045",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Hurlstone Park",
                    postCode: "2193",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Leichardt",
                    postCode: "2040",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Lewisham",
                    postCode: "2049",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Lilyfield",
                    postCode: "2040",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Marrickville",
                    postCode: "2204",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Newtown",
                    postCode: "2042",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Petersham",
                    postCode: "2049",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "St Peters",
                    postCode: "2044",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Stanmore",
                    postCode: "2048",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Sydenham",
                    postCode: "2044",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Tempe",
                    postCode: "2044",
                    includeSurroundingSuburbs: false
                  },
              ]
          }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end
        
    def self.populate_parramatta_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
        search_endpoint, 
        :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
        :body => {
          listingType: "Sale",
          propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
          minBedrooms: 0,
          minBathrooms: 0,
          minCarspaces: 0,
          minLandArea: 600,
          maxPrice: 2100000,
          pageSize: 100,
          sort: {
            sortKey: "DateUpdated",
            direction: "Ascending",
          },
          locations: [
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Epping",
              postCode: "2121",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Dundas Valley",
              postCode: "2117",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Telopea",
              postCode: "2117",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Melrose Park",
              postCode: "2114",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Ermington",
              postCode: "2115",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Rydalmere",
              postCode: "2116",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Carlingford",
              postCode: "2118",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Dundas",
              postCode: "2117",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "North Parramatta",
              postCode: "2151",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Harris Park",
              postCode: "2150",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Oatlands",
              postCode: "2117",
              includeSurroundingSuburbs: false
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "North Rocks",
              postCode: "2151",
              includeSurroundingSuburbs: false
            },
          ]
        }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    def self.populate_canterbury_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
          search_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
          :body => {
              listingType: "Sale",
              propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
              minBedrooms: 0,
              minBathrooms: 0,
              minCarspaces: 0,
              minLandArea: 600,
              maxPrice: 2000000,
              pageSize: 100,
              sort: {
                sortKey: "DateUpdated",
                direction: "Ascending",
              },
              locations: [
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Belfield",
                    postCode: "2191",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Campsie",
                    postCode: "2194",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Undercliffe",
                    postCode: "2206",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Earlwood",
                    postCode: "2206",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Canterbury",
                    postCode: "2193",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Clemton Park",
                    postCode: "2206",
                    includeSurroundingSuburbs: false
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Belmore",
                    postCode: "2192",
                    includeSurroundingSuburbs: false
                  },
              ]
          }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    def self.populate_logan_listings
      Listing.destroy_all

      search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
      request = HTTParty.post(
          search_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
          :body => {
              listingType: "Sale",
              propertyTypes: ["House", "DevelopmentSite", "NewHouseLand", "Duplex", "SemiDetached", "VacantLand" ],
              minBedrooms: 3,
              minBathrooms: 0,
              minCarspaces: 0,
              minLandArea: 500,
              maxPrice: 600000,
              pageSize: 50,
              sort: {
                sortKey: "DateUpdated",
                direction: "Ascending",
              },
              locations: [
                  {
                    state: "QLD",
                    region: "",
                    area: "",
                    suburb: "Crestmead",
                    postCode: "4132",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "QLD",
                    region: "",
                    area: "",
                    suburb: "Boronia Heights",
                    postCode: "4124",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "QLD",
                    region: "",
                    area: "",
                    suburb: "Eden's Landing",
                    postCode: "4207",
                    includeSurroundingSuburbs: true
                  }
              ]
          }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    private

    def self.get_frontage_value(str)
      frontage_value = "N/A"
      str_match_1 = /\b([0-3][0-9])(\.([0-9]{1,2}))?m\b/.match(str)
      str_match_2 = /\b([0-3][0-9])(\.([0-9]{1,2}))? (metres?)\b/.match(str)
      if str_match_1 
        frontage_value = str_match_1
      elsif str_match_2
        frontage_value = str_match_2
      end
      return frontage_value
    end

    # Check function
    def self.save_json_url(response_json)
      response_json.map do |response_json_item|
        listing = Listing.new
        listing.domain_listing_id = response_json_item["listing"]["id"]
        listing.address = response_json_item["listing"]["propertyDetails"]["displayableAddress"]
        listing.land_area = response_json_item["listing"]["propertyDetails"]["landArea"]
        listing.headline_desc = response_json_item["listing"]["headline"]
        listing.summary_desc = response_json_item["listing"]["summaryDescription"]
        listing.display_price = response_json_item["listing"]["priceDetails"]["displayPrice"]
        listing.agency_name = response_json_item["listing"]["advertiser"]["name"]
        listing.beds = response_json_item["listing"]["bedrooms"]
        listing.baths = response_json_item["listing"]["bathrooms"]
        listing.car_spaces = response_json_item["listing"]["carspaces"]
        if response_json_item["listing"]["advertiser"]["contacts"][0]
          listing.agent = response_json_item["listing"]["advertiser"]["contacts"][0]["name"]
        end
        listing.save
      end

      listings = Listing.all
      for listing in listings 
        i_listing_endpoint = "https://api.domain.com.au/v1/listings/#{listing.domain_listing_id}"
        request = HTTParty.get(
          i_listing_endpoint, 
          :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]}
        )
        resp_listing_json = JSON.parse(request.body)

        listing.listing_url = resp_listing_json["seoUrl"]
        listing.listing_desc = resp_listing_json["description"]
        listing.listing_status = resp_listing_json["status"]
        listing.sale_method = resp_listing_json["saleDetails"]["saleMethod"]
        listing.auction_location = (resp_listing_json["saleDetails"]["auctionDetails"] && resp_listing_json["saleDetails"]["auctionDetails"]["auctionSchedule"]["locationDescription"])
        listing.auction_time = (resp_listing_json["saleDetails"]["auctionDetails"] && resp_listing_json["saleDetails"]["auctionDetails"]["auctionSchedule"]["openingDateTime"])
        listing.frontage = get_frontage_value(resp_listing_json["description"])
        listing.save
      end
    end
end