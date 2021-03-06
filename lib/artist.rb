class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end

end
