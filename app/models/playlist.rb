class Playlist < ActiveRecord::Base

    def self.parse_info(playlist_name,playlist_info)

        playlist = Playlist.new

        playlist.name = playlist_name

        puts playlist_info.class.name

        playlist_info_format = [] 
        
        playlist_info.each do |line|
            playlist_info_format << line[0]
            playlist_info_format << line[1]
        end 

        playlist_info = playlist_info_format

        #binding.pry

        curator_index = playlist_info.find_index("Curator")
        #puts curator_index
        email_index = playlist_info.find_index("Email")
        location_index = playlist_info.find_index("Location")
        genres_index = playlist_info.find_index("Genres")
        followers_index = playlist_info.find_index("Followers")
        songs_index = playlist_info.find_index("Songs")
        description_index = playlist_info.find_index("Description")
        spotify_playlist_page_index = playlist_info.find_index("Spotify Playlist Page")
        twitter_index = playlist_info.find_index("Twitter")
        youtube_index = playlist_info.find_index("YouTube")
        instagram_index = playlist_info.find_index("Instagram")
        reddit_index = playlist_info.find_index("Reddit")
        facebook_index = playlist_info.find_index("Facebook")
        website_index = playlist_info.find_index("Website")
        patreon_index = playlist_info.find_index("Patreon")

        #binding.pry

        playlist.curator = playlist_info[curator_index.to_i + 1] if curator_index 
        playlist.email = playlist_info[email_index.to_i + 1] if email_index
        playlist.location = playlist_info[location_index.to_i + 1] if location_index
        playlist.genres = playlist_info[genres_index.to_i + 1] if genres_index
        playlist.followers = playlist_info[followers_index.to_i + 1] if followers_index
        playlist.songs = playlist_info[songs_index.to_i + 1] if songs_index
        playlist.description = playlist_info[description_index.to_i + 1] if description_index
        playlist.spotify_playlist_page = playlist_info[spotify_playlist_page_index.to_i + 1] if spotify_playlist_page_index
        playlist.twitter = playlist_info[twitter_index.to_i + 1] if twitter_index
        playlist.youtube = playlist_info[youtube_index.to_i + 1] if youtube_index
        playlist.instagram = playlist_info[instagram_index.to_i + 1] if instagram_index
        playlist.reddit = playlist_info[reddit_index.to_i + 1] if reddit_index
        playlist.facebook = playlist_info[facebook_index.to_i + 1] if facebook_index
        playlist.website = playlist_info[website_index.to_i + 1] if website_index
        playlist.patreon = playlist_info[patreon_index.to_i + 1] if patreon_index

        playlist.save
    end 

    def fix_descriptions()
        
    end 
end     