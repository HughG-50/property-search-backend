class AddListingDescAndFrontageToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :listing_desc, :text
    add_column :listings, :frontage, :string
  end
end
