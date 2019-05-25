class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs, :genres
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << self
  end
  
  def songs
    Songs.all.collect {|song| song.artist == self}
  end
  
  def genres
    @songs.collect {|song| song.genre}
  end
  
end