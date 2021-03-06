class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end


end
