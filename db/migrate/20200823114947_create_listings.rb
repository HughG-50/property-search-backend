class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :domain_listing_id
      t.string :address
      t.integer :land_area
      t.string :headline_desc
      t.text :summary_desc
      t.string :listing_url
      t.string :display_price
      t.string :agency_name
      t.string :agent

      t.timestamps
    end
  end
end
