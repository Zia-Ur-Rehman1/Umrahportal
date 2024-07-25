# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_24_194427) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string "name", null: false
    t.string "location"
    t.string "distance"
    t.string "category"
    t.string "service"
    t.integer "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city", "name"], name: "index_hotels_on_city_and_name"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "umrah_visa_id"
    t.integer "days"
    t.integer "adults"
    t.integer "infant"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "status"
    t.text "description"
    t.integer "days_in_makka"
    t.integer "days_in_madina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_reservations_on_room_id"
    t.index ["umrah_visa_id"], name: "index_reservations_on_umrah_visa_id"
  end

  create_table "riyal_rates", force: :cascade do |t|
    t.decimal "rate", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.string "room_type", null: false
    t.integer "price", null: false
    t.date "from"
    t.date "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["room_type"], name: "index_rooms_on_room_type"
  end

  create_table "umrah_visas", force: :cascade do |t|
    t.string "visa_type", null: false
    t.integer "price", null: false
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "rooms"
  add_foreign_key "reservations", "umrah_visas"
  add_foreign_key "rooms", "hotels"
end
