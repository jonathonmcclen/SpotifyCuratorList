#General Arts Touring
#PO Box 825, Highland, NY 12528
#PH: 917-645-5383
#Tom Gallant tomg@genartstouring.com https://www.generalartstouring.com
#I bring my knowledge of touring and my sensitivity to each artist'92s needs to this ever-changing world of the performing arts.
#Genres: CLASSICAL, SOLOISTS, ENSEMBLES
#Books Shows in: United States, Canada

def get_file_text
    data_file = File.open("list.txt")
    file_text = data_file.read
    data_file.close
    file_text
end

playlist_array = get_file_text.split("\n\n") #split blocks

def exists_then_save(playlist ,arg)

    playlist.each do |line|
        #binding.pry
        if line.include?(arg)
            return line[1]
        end 
    end
    return nil
end

playlist_array.each do |playlist|
    #binding.pry
    playlist = playlist.split("\n") #pliting lines
    new_playlist = Playlist.new
    new_playlist.name = playlist[0]
    playlist.shift

    playlist = playlist.collect do |line|
        line.split(": ")
    end 

    #binding.pry

    new_playlist.curator = exists_then_save(playlist, "Curator")
    new_playlist.email = exists_then_save(playlist,"Email")
    new_playlist.location = exists_then_save(playlist,"Location")
    new_playlist.genres_string = exists_then_save(playlist,"Genres")
    new_playlist.followers = exists_then_save(playlist,"Followers").to_i
    new_playlist.songs = exists_then_save(playlist,"Songs").to_i
    new_playlist.description = exists_then_save(playlist,"Description")
    new_playlist.spotify_playlist_page = exists_then_save(playlist,"Spotify Playlist Page")
    new_playlist.twitter = exists_then_save(playlist,"Twitter")
    new_playlist.youtube = exists_then_save(playlist,"Youtube")
    new_playlist.instagram = exists_then_save(playlist,"Instagram")
    new_playlist.reddit = exists_then_save(playlist,"Reddit")
    new_playlist.facebook = exists_then_save(playlist,"Facebook")
    new_playlist.website = exists_then_save(playlist,"Website")
    new_playlist.patreon = exists_then_save(playlist,"Patreon")

    new_playlist.save

end

Playlist.all.each do |playlist|
    #binding.pry
    if playlist.genres_string != nil

        playlist_genres = playlist.genres_string.split(", ")

        playlist_genres.each do |genre|
            playlist.genres << Genre.find_or_create_by(name: genre)
        end

    else
        next
    end 
end

