class Artist

attr_accessor :name


@@all = []

  def initialize(name)

    @name = name
    @songs = []

  end

  def add_song(song)

    @songs << song

  end

  def songs

    @songs

  end

  def save

    @@all << self

  end

  def self.all

    @@all

  end

  def self.find_or_create_by_name(artist_name)

    existing_artist = @@all.find do |artist|
      artist.name == artist_name
    end

    if existing_artist != nil
      return existing_artist
    else
      artist = Artist.new(artist_name)
      artist.save
      return artist
    end

  end

  def print_songs

    @songs.each do |song|

      puts song.name

    end

  end


end
