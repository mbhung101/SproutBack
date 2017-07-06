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

ActiveRecord::Schema.define(version: 20170706142608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.text "message"
    t.string "priority"
    t.string "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.integer "temperature"
    t.string "forecast"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_days_on_season_id"
  end

  create_table "garden_patches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.integer "year"
    t.string "name"
    t.bigint "user_id"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_gardens_on_season_id"
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.text "url"
    t.bigint "patch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patch_id"], name: "index_images_on_patch_id"
  end

  create_table "patches", force: :cascade do |t|
    t.string "plant"
    t.integer "number"
    t.string "fertilizer"
    t.integer "spacing"
    t.string "planted_on"
    t.integer "age"
    t.string "water"
    t.text "notes"
    t.string "sunlight"
    t.integer "total_yield"
    t.string "substrate"
    t.integer "seed_depth"
    t.bigint "garden_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_patches_on_garden_id"
    t.index ["user_id"], name: "index_patches_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_seasons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.integer "age"
    t.string "city"
    t.string "state"
    t.string "username"
    t.text "bio"
    t.string "profilepic"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yields", force: :cascade do |t|
    t.integer "weight"
    t.string "harvested_on"
    t.bigint "patch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patch_id"], name: "index_yields_on_patch_id"
  end

  add_foreign_key "alerts", "users"
  add_foreign_key "days", "seasons"
  add_foreign_key "gardens", "seasons"
  add_foreign_key "gardens", "users"
  add_foreign_key "images", "patches"
  add_foreign_key "patches", "gardens"
  add_foreign_key "patches", "users"
  add_foreign_key "seasons", "users"
  add_foreign_key "yields", "patches"
end
