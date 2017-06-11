class MP3Importer
require_relative "song.rb"


attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    directory = Dir.entries(@path)
    return directory.select do |file|
      file.include?(".mp3")
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end

  end

end
