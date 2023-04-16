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

ActiveRecord::Schema[7.0].define(version: 2023_04_15_133932) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paintings", force: :cascade do |t|
    t.string "title"
    t.string "image_url"
    t.text "description"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_id", null: false
    t.integer "views"
    t.index ["artist_id"], name: "index_paintings_on_artist_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "painting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reviewer"
    t.integer "rating"
    t.text "comment"
    t.index ["painting_id"], name: "index_reviews_on_painting_id"
  end

  add_foreign_key "paintings", "artists"
  add_foreign_key "reviews", "paintings"
end
