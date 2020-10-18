class AddSaleDetailsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :sale_method, :string
    add_column :listings, :auction_location, :string
    add_column :listings, :auction_time, :string
  end
end
