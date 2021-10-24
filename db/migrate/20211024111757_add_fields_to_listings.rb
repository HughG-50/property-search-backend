class AddFieldsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :beds, :integer
    add_column :listings, :baths, :integer
    add_column :listings, :car_spaces, :integer
  end
end
