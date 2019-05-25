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
  
  
  
end