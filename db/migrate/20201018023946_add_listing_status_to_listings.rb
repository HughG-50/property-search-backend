class AddListingStatusToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :listing_status, :string
  end
end
