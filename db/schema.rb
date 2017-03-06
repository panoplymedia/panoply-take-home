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

ActiveRecord::Schema.define(version: 20170306185223) do

  create_table "advertisements", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "categories"
    t.integer  "downloads"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string   "title"
    t.datetime "release_time"
    t.integer  "category"
    t.integer  "podcast_id"
    t.string   "audio_url"
    t.integer  "ad_position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "podcasts", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
