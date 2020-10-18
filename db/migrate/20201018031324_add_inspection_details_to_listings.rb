class AddInspectionDetailsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :inspection_open_time, :string
    add_column :listings, :inspection_close_time, :string
    add_column :listings, :inspection_desc, :string
  end
end
