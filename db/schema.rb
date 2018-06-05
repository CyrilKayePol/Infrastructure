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

ActiveRecord::Schema.define(version: 20180605162425) do

  create_table "accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_data", force: :cascade do |t|
    t.text     "name"
    t.text     "roofing"
    t.text     "ceiling"
    t.text     "floor"
    t.text     "door"
    t.text     "door_knobs"
    t.text     "painting"
    t.text     "walling"
    t.text     "tiles"
    t.text     "switches"
    t.text     "outlets"
    t.text     "lights"
    t.text     "wires"
    t.text     "chairs"
    t.text     "tables"
    t.text     "aircon"
    t.text     "electic_fans"
    t.text     "projectors"
    t.text     "blackboard"
    t.text     "whiteboard"
    t.text     "glassboard"
    t.text     "plumbing"
    t.text     "fence"
    t.text     "staircase"
    t.text     "covered_walk"
    t.text     "comfort_room"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.date     "date_built"
    t.string   "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historical_data", force: :cascade do |t|
    t.text     "name"
    t.date     "date"
    t.text     "event"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.text     "news"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "first_name"
    t.text     "last_name"
    t.text     "mobile_number"
    t.text     "address"
  end

end
