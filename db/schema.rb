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

ActiveRecord::Schema.define(version: 2020_11_11_221939) do

  create_table "appointments", force: :cascade do |t|
    t.integer "artwork_id"
    t.integer "user_id"
    t.date "date"
    t.time "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_appointments_on_artwork_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "image_url"
    t.string "title"
    t.string "artist_name"
    t.string "gallery"
    t.string "medium"
    t.integer "year"
    t.string "dimensions"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_artworks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "artwork_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "text"
    t.boolean "recommend"
    t.integer "user_id"
    t.integer "artwork_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "vip_status"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
