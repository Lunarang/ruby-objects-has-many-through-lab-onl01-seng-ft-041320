class Artist 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(title, genre)
    song = Song.new(title, genre)
    song.artist = self 
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def genres 
    self.songs.collect {|song| song.genre}
  end
    
end
