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

ActiveRecord::Schema.define(version: 1) do

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.string "curator"
    t.string "email"
    t.string "location"
    t.string "genres"
    t.string "followers"
    t.string "songs"
    t.string "description"
    t.string "spotify_playlist_page"
    t.string "twitter"
    t.string "youtube"
    t.string "instagram"
    t.string "reddit"
    t.string "facebook"
    t.string "website"
    t.string "patreon"
  end

end
