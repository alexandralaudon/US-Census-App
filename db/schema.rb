# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150408171340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "states", force: :cascade do |t|
    t.string  "place_name"
    t.integer "pop"
    t.decimal "pct_change"
    t.decimal "pop_sq_mi"
    t.string  "state_postal"
    t.integer "fips"
    t.integer "gnis"
    t.decimal "pct_white"
    t.decimal "pct_black"
    t.decimal "pct_am_ind"
    t.decimal "pct_asian"
    t.decimal "pct_nat_haw_oth"
    t.decimal "pct_two_or_more"
    t.decimal "pct_hisp"
    t.decimal "pct_non_hisp"
    t.decimal "pct_non_hisp_white"
    t.decimal "pct_other"
    t.decimal "diversity_index"
    t.decimal "land_sq_mi"
    t.decimal "water_sq_mi"
    t.decimal "tot_sq_mi"
    t.decimal "lat"
    t.decimal "long"
    t.integer "housing_units"
    t.decimal "pct_vacant"
    t.integer "census_year"
  end

  create_table "users", force: :cascade do |t|
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin",           default: false
    t.string  "cookie_id"
    t.integer "state_id"
    t.string  "age"
    t.string  "job"
    t.string  "industry"
    t.string  "race"
    t.string  "language"
  end

end
