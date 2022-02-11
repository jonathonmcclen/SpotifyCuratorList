# SpotifyCuratorListAPI

This is a list of over 3,000+ user curated Spotify playlists, that accept submissions from musicians and recording artist.

## End Points

### Basic end point for a complete list of playlists
>/playlist

### Add an :playlist_id to view a singular playlist
>/playlist/:playlist_id


### Full List of Genres
>/genre


### View singular Genre json object. object inclueds :name and :id
>/genre/:genre_name

*The Magic
### View all playlists that have the specified genre
>/genre/:genre_name/playlists
