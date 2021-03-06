Rails.application.routes.draw do
  get '/', to: "welcome#index", as: 'root'

  get '/auth/:spotify/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/dashboard', to: "users#show", as: "dashboard"


  resources :playlists, only: [:index]
  get '/playlists/:playlist(?id=:id)', to: "playlists#show", as: "playlist"

  mount ActionCable.server, at: '/cable'
  post "message", to: "messages#create"
end
