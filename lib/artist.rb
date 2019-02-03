class Artist 
  @@all = []
  attr_accessor :name , :songs 
  def initialize(name)
    @name = name 
    @songs = []
  end
  def add_song(song)
    @songs << song
    
  end
  def self.all 
    @@all
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)
    found_or_new= nil 
    @@all.collect do |x|
      if name == x.name
        found_or_new = x 
      else 
        return Song.new(name)
      end
    end
      return found_or_new
  end
  def print_songs
    @@all.each do |song|
      puts song
    end
  end
      
end