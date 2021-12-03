class CreatePlaylists < ActiveRecord::Migration[5.0]
    def change
        create_table :playlists do |t|
            t.string :name
            t.string :curator  
            t.string :email
            t.string :location
            t.string :genres
            t.string :followers
            t.string :songs
            t.string :description
            t.string :spotify_playlist_page
            t.string :twitter
            t.string :youtube
            t.string :instagram
            t.string :reddit
            t.string :facebook
            t.string :website
            t.string :patreon
        end 
    end 
end 