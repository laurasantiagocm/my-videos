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

ActiveRecord::Schema.define(version: 20201218171421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string  "name"
    t.boolean "favorite"
  end

  create_table "comments", force: :cascade do |t|
    t.string  "author_name"
    t.text    "comment_body"
    t.integer "video_id"
  end

  add_index "comments", ["video_id"], name: "index_comments_on_video_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string  "title"
    t.string  "youtube_link"
    t.integer "category_id"
  end

  add_index "videos", ["category_id"], name: "index_videos_on_category_id", using: :btree

  add_foreign_key "comments", "videos"
  add_foreign_key "videos", "categories"
end
