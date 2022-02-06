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

ActiveRecord::Schema.define(version: 3) do

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.string "curator"
    t.string "email"
    t.string "location"
    t.string "genres_string"
    t.integer "followers"
    t.integer "songs"
    t.string "description"
    t.string "spotify_playlist_page"
    t.string "website"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "youtube"
    t.string "reddit"
    t.string "patreon"
    t.string "sound_cloud"
    t.string "submit_hub"
    t.string "linked_in"
    t.string "submission_page"
  end

  create_table "playlists_genres", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "genre_id"
  end

end
