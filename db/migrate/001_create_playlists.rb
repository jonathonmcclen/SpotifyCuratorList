class CreatePlaylists < ActiveRecord::Migration[6.1]
    def change
        create_table :playlists do |t|
            t.string :name
            t.string :curator
            t.string :email
            t.string :location
            t.string :genres_string
            t.integer :followers
            t.integer :songs
            t.string :description
            t.string :spotify_playlist_page
            t.string :website
            t.string :facebook
            t.string :twitter
            t.string :instagram
            t.string :youtube
            t.string :reddit
            t.string :patreon
            t.string :sound_cloud
            t.string :submit_hub
            t.string :linked_in
            t.string :submission_page
        end 
    end 
end