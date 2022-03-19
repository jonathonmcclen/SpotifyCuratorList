class PlaylistController < ApplicationController

    def index
        playlists = Playlist.all
        render json: playlists.to_json(:include => { :genres => { :only => :name } })
    end 

    def show
        playlist = Playlist.find(params[:playlist_id])
        render json: {name: playlist.name,followers: playlist.followers, songs: playlist.songs, curator: playlist.curator, description: playlist.description, genres: playlist.genres }
        #render json: playlist
    end 

    def genre_search
        genre = Genre.find_by(name: params[:genre_name].upcase)
        
        render json: genre.playlists.to_json(:include => { :genres => { :only => :name } })
    end 

    def nil_genre
        playlists = Playlist.where(genres_string: nil)
        render json: playlists
    end

    def new
        new_playlist = Playlist.new
        
        new_playlist.name = params[:name] != "" ? params[:name] : nil 
        new_playlist.curator = params[:curator] != "" ? params[:curator] : nil 
        new_playlist.email = params[:email] != "" ? params[:email] : nil
        new_playlist.location = params[:location] != "" ? params[:location] : nil
        new_playlist.genres_string = params[:genres_string] != "" ? params[:genres_string] : nil
        new_playlist.description = params[:description] != "" ? params[:description] : nil
        new_playlist.spotify_playlist_page = params[:playlist_page] != "" ? params[:playlist_page] : nil
        new_playlist.twitter = params[:twitter] != "" ? params[:twitter] : nil
        new_playlist.youtube = params[:youtube] != "" ? params[:youtube] : nil
        new_playlist.instagram = params[:instagram] != "" ? params[:instagram] : nil
        new_playlist.reddit = params[:reddit] != "" ? params[:reddit] : nil
        new_playlist.facebook = params[:facebook] != "" ? params[:facebook] : nil
        new_playlist.website = params[:website] != "" ? params[:website] : nil
        new_playlist.patreon = params[:patreon] != "" ? params[:patreon] : nil
        new_playlist.save
    end 

    def new_for_final

        new_playlist = Playlist.new
        #binding.pry
        
        new_playlist.name = params[:playlist][:playlistName] != "" ? params[:playlist][:playlistName] : nil 
        new_playlist.curator = params[:playlist][:curator] != "" ? params[:playlist][:curator] : nil 
        new_playlist.email = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.location = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.genres_string = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.description = params[:playlist][:playlistDescription] != "" ? params[:playlist][:playlistDescription] : nil
        new_playlist.spotify_playlist_page = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.twitter = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.youtube = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.instagram = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.reddit = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.facebook = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.website = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.patreon = params[:playlist] != "" ? params[:playlist] : nil
        new_playlist.save

        render json: new_playlist
    end 

end 