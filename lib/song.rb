class Song

  attr_accessor :name, :artist


  def initialize(song_name)

    self.name = song_name

  end

  def self.new_by_filename(file_name)
    file_name.chomp!('.mp3')
    file_name = file_name.split(" - ")
    song = self.new(file_name[1])
    song.artist = Artist.find_or_create_by_name(file_name[0])
    song.artist.add_song(song)
    return song
  end


  def artist_name

    self.artist.name

  end

end
