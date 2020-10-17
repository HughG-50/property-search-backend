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
                    suburb: "Epping",
                    postCode: "2121",
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
          maxPrice: 2200000,
          pageSize: 100,
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

    private

    def self.save_json_url(response_json)
        search_terms = ["duplex", "development", "redevelop", "stca", "develop", "r2", "r2 zoning", "r3", "r3 zoning"]
        response_json.map do |response_json_item|
            if ((response_json_item["listing"]["headline"].downcase || response_json_item["listing"]["summaryDescription"].downcase).match(Regexp.union(search_terms)))
                listing = Listing.new
                listing.domain_listing_id = response_json_item["listing"]["id"]
                listing.address = response_json_item["listing"]["propertyDetails"]["displayableAddress"]
                listing.land_area = response_json_item["listing"]["propertyDetails"]["landArea"]
                listing.headline_desc = response_json_item["listing"]["headline"]
                listing.summary_desc = response_json_item["listing"]["summaryDescription"]
                listing.display_price = response_json_item["listing"]["priceDetails"]["displayPrice"]
                listing.agency_name = response_json_item["listing"]["advertiser"]["name"]
                listing.agent = response_json_item["listing"]["advertiser"]["contacts"][0]["name"]
                listing.save
            end
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
            listing.save
        end
    end

end