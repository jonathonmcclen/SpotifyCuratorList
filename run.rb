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

def fix_all_descriptions()
    data_file = File.open("testObj.txt")
    file_text = data_file.read
    data_file.close

    #separate objects by double space
    playlists_blocks = file_text.split("\n\n")

    playlists_blocks.each do |playlist| 
        playlist_info = playlist.split("\n")
        new_playlist_info = []
        description_start_i = 0

        playlist_info.each do |line|
            if line.include?("Description: ")
                description_start_i = playlist_info.index(line) #num
            end
        end

        description = playlist_info[description_start_i]

        playlist_info[description_start_i..last].each do |line|
            if !line.include?(": ")
                description = description + " " + line
            else
                break
            end 
        end
        
        description

    end 
end 