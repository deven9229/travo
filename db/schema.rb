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

ActiveRecord::Schema.define(version: 2019_05_27_032503) do

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.text "year_founded"
    t.text "license_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guide_languages", force: :cascade do |t|
    t.integer "guide_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_guide_languages_on_guide_id"
    t.index ["language_id"], name: "index_guide_languages_on_language_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.text "license_number"
    t.text "gender"
    t.text "license_type"
    t.text "languages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_birth"
    t.text "cid"
    t.text "license_expiry_date"
    t.text "contact_number"
    t.text "email"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.string "rental_agency_or_person"
    t.text "contact_number"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
