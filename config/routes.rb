Rails.application.routes.draw do
  get '/playlist', to: 'playlist#index'
  get '/playlist/:playlist_id', to: 'playlist#show'
  
  get '/genre', to: 'genre#index'
  get '/genre/:genre', to: 'genre#show'

  get '/genre/:genre_name/playlists', to: 'playlist#genre_search'

  post '/playlist/new', to: 'playlist#new'
  post '/playlist/new/forfinal', to: 'playlist#new_for_final'
end
