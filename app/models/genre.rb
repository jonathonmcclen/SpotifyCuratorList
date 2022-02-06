class Genre < ActiveRecord::Base
    has_many :playlists_genres
    has_many :playlists, through: :playlists_genres
end     