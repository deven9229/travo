# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_121112) do

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
    t.index ["name", "gender"], name: "index_guides_on_name_and_gender"
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

  create_table "searches", force: :cascade do |t|
    t.string "name"
    t.text "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "guide_languages", "guides"
  add_foreign_key "guide_languages", "languages"
end
