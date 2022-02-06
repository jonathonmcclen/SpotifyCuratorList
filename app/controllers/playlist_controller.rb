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
        genre = Genre.find(params[:genre_id])
        
        render json: genre.playlists.to_json(:include => { :genres => { :only => :name } })
    end 

    def nil_genre
        playlists = Playlist.where(genres_string: nil)
        render json: playlists
    end

end 