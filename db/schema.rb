# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_18_025151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.integer "domain_listing_id"
    t.string "address"
    t.integer "land_area"
    t.string "headline_desc"
    t.text "summary_desc"
    t.string "listing_url"
    t.string "display_price"
    t.string "agency_name"
    t.string "agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "listing_desc"
    t.string "frontage"
    t.string "listing_status"
    t.string "sale_method"
    t.string "auction_location"
    t.string "auction_time"
  end

end
