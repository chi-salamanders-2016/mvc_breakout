require_relative 'playlist_view'
require_relative 'playlist'

class PlaylistManager

  def initialize
    @playlist = Playlist.new
  end

  def run
    # tell user what they can do
    # receive input and process it

    PlaylistView.display_welcome

    while true
      PlaylistView.display_menu

      input = gets.chomp!

      case input
      when "list"
        # get songs
        # display songs
        PlaylistView.display_songs(@playlist.songs)
      when "add"
        add_song
      when "exit"
        PlaylistView.display_shutdown_message
        exit
      end

    end
  end

  def add_song
    # prompt for song name
    # prompt for song artist
    # add it to the playlist
    PlaylistView.prompt_for_song_name
    name = gets.chomp!
    PlaylistView.prompt_for_song_artist
    artist = gets.chomp!
    @playlist.add(name, artist)
    PlaylistView.add_confirmation
  end
end