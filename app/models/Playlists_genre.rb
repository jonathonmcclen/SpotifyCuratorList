class PlaylistsGenre < ActiveRecord::Base
    belongs_to :playlist
    belongs_to :genre
end     