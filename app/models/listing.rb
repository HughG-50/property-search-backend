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
                propertyTypes: ["House"],
                minBedrooms: 1,
                minBathrooms: 1,
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
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "East Ryde",
                    postCode: "2113",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Top Ryde",
                    postCode: "2122",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "West Ryde",
                    postCode: "2114",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "North Ryde",
                    postCode: "2113",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Ryde",
                    postCode: "2112",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Meadowbank",
                    postCode: "2114",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Marsfield",
                    postCode: "2122",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Macquarie Park",
                    postCode: "2113",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Putney",
                    postCode: "2112",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone",
                    postCode: "2114",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone West",
                    postCode: "2114",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Denistone East",
                    postCode: "2112",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Epping",
                    postCode: "2121",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Gladesville",
                    postCode: "2111",
                    includeSurroundingSuburbs: true
                  },
                  {
                    state: "NSW",
                    region: "",
                    area: "",
                    suburb: "Tennyson Point",
                    postCode: "2111",
                    includeSurroundingSuburbs: true
                  },
                ]
            }.to_json
        )
        response_json = JSON.parse(request.body)
        save_json_url(response_json)
    end

    # Might need to reconsider the condition string checking for "duplex" and "development"
    def self.populate_strathfield_listings
        Listing.destroy_all

        search_endpoint = "https://api.domain.com.au/v1/listings/residential/_search"
        request = HTTParty.post(
            search_endpoint, 
            :headers => { "content-type": "application/json", "X-API-Key": ENV["DOMAIN_API_KEY"]},
            :body => {
                listingType: "Sale",
                propertyTypes: ["House"],
                minBedrooms: 1,
                minBathrooms: 1,
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
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Burwood",
                        postCode: "2134",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Croydon",
                        postCode: "2132",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Five Dock",
                        postCode: "2046",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Haberfield",
                        postCode: "2045",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "North Strathfield",
                        postCode: "2137",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Homebush",
                        postCode: "2140",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Ashfield",
                        postCode: "2131",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Enfield",
                        postCode: "2136",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Burwood Heights",
                        postCode: "2136",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Strathfield South",
                        postCode: "2136",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Belfield",
                        postCode: "2191",
                        includeSurroundingSuburbs: true
                    },
                    {
                        state: "NSW",
                        region: "",
                        area: "",
                        suburb: "Croydon Park",
                        postCode: "2133",
                        includeSurroundingSuburbs: true
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
          propertyTypes: ["House"],
          minBedrooms: 1,
          minBathrooms: 1,
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
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Dundas Valley",
              postCode: "2117",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Telopea",
              postCode: "2117",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Melrose Park",
              postCode: "2114",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Ermington",
              postCode: "2115",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Rydalmere",
              postCode: "2116",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Carlingford",
              postCode: "2118",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Dundas",
              postCode: "2117",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "North Parramatta",
              postCode: "2151",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Harris Park",
              postCode: "2150",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "Oatlands",
              postCode: "2117",
              includeSurroundingSuburbs: true
            },
            {
              state: "NSW",
              region: "",
              area: "",
              suburb: "North Rocks",
              postCode: "2151",
              includeSurroundingSuburbs: true
            },
          ]
        }.to_json
      )
      response_json = JSON.parse(request.body)
      save_json_url(response_json)
    end

    private

    def self.save_json_url(response_json)
        search_terms = ["duplex", "development", "redevelop", "stca", "develop"]
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