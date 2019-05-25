class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs, :genres
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def genres
    @songs.collect {|song| song.genre}
  end
  
end