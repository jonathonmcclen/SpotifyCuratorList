def get_file_text
    data_file = File.open("testObj.txt")
    file_text = data_file.read
    data_file.close
    file_text
end

def refresh_data

    Playlist.delete_all

    data_file = File.open("testObj.txt")
    file_text = data_file.read
    data_file.close

    #file_text.gsub(/\r/," ")
    playlists = file_text.split("\n\n")

   # a.find_index("a")

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