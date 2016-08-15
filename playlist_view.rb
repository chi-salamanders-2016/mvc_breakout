module PlaylistView

  def self.display_welcome
    puts "Welcome to the playlist manager!"
  end

  def self.display_menu
    puts <<-MSG

Enter 'list' to see all songs
Enter 'add' to add a song
Enter 'exit' to quit
      MSG

      print ">"
  end

  def self.display_songs(songs)
    puts songs
  end

  def self.prompt_for_song_name
    puts "Enter song title:"
    print ">"
  end

  def self.prompt_for_song_artist
    puts "Enter song artist:"
    print ">"
  end

  def self.add_confirmation
    puts "Song successfully added!"
  end

  def self.display_shutdown_message
    puts "Bye!!!"
  end
end