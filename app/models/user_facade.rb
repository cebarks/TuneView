class UserFacade 
  def self.top_5_artists(user)
    artist_data = SpotifyService.top_5_artists(user)
    artist_data.map do |data|
      Artist.new(data)
    end
  end 

  def self.most_recent_track(user)
    SpotifyService.most_recent_track(user)
  end 

  def self.playlists(user)
    playlist_data = SpotifyService.find_playlists(user)
    playlist_data.map do |data|
      Playlist.new(data)
    end
  end 
end 