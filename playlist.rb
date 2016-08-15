require_relative 'playlist_parser'

class Playlist
  include PlaylistParser

  attr_reader :songs

  def initialize
    @songs = load_songs
  end

  def add(title, artist)
    song_with_max_id = @songs.max_by { |song| song.id.to_i }
    new_id = song_with_max_id.id.to_i + 1
    songs << Song.new(id: new_id, name: title, artist: artist)
    save_songs(songs)
  end
end