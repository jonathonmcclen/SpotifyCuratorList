class Playlist < ActiveRecord::Base
    
    has_many :playlists_genres
    has_many :genres, through: :playlists_genres

    def self.refresh_data
    
        Playlist.delete_all
        file_text = get_file_text
    
        #split blocks
        playlists = file_text.split("\n\n")
    
       playlists.each do |playlist| 
            playlist_info = playlist.split("\n")
    
            #grab name then remove it for parsing
            playlist_name = playlist_info[0]
            playlist_info.shift
    
            playlist_info = playlist_info.collect do |line|
                line.split(": ")
            end
    
            #puts playlist_info
    
            Playlist.parse_info(playlist_name, playlist_info)
        end 
    end

    
end     