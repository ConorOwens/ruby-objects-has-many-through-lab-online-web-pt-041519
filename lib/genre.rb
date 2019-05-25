class Genre 
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.collect
  end
  
  def artists
    Songs.all.collect {|song| song.artist}
  end
  
end