class CreatePlaylistsGenres < ActiveRecord::Migration[6.1]
    def change
        create_table :playlists_genres do |t|
            t.integer :playlist_id
            t.integer :genre_id
        end 
    end 
end