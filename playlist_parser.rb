require 'csv'
require_relative 'song'

module PlaylistParser

  PLAYLIST_FILE = "playlist.csv"

  def load_songs
    songs = []

    CSV.foreach(PLAYLIST_FILE, headers: true, header_converters: :symbol) do |row|
      songs << Song.new(row)
    end

    songs
  end

  def save_songs(songs)
    CSV.open(PLAYLIST_FILE, "wb") do |csv_file_object|
      csv_file_object << ["id", "name", "artist"]
      songs.each {|song| csv_file_object << song.to_a }
    end
  end
end