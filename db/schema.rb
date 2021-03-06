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

ActiveRecord::Schema.define(version: 20150604050302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.float    "energy_in_kilojoules"
    t.float    "sugar_in_grams"
    t.float    "fat_in_grams"
    t.float    "sodium_in_milligrams"
    t.float    "standard_drinks"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "foods", force: :cascade do |t|
    t.text     "type"
    t.float    "energy_in_kilojoules"
    t.float    "sugar_in_grams"
    t.float    "fat_in_grams"
    t.float    "sodium_in_milligrams"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "age"
    t.string   "gender"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.string   "token"
    t.datetime "expires_at"
  end

end
