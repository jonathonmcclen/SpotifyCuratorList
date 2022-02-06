Rails.application.routes.draw do
  get '/playlist', to: 'playlist#index'
  get '/playlist/:playlist_id', to: 'playlist#show'
  
  get '/genre', to: 'genre#index'
  get '/genre/:genre_id', to: 'genre#show'

  get '/genre/:genre_id/playlists', to: 'playlist#genre_search'
  get '/playlists/genre/nil', to: 'playlist#nil_genre'
end
