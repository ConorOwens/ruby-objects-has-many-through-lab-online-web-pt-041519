class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs, :genres
  
  def intialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    @songs << song
  end
  
  def genres
    @songs.collect {|song| song.genre}
  end
  
end