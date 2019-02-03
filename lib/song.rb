class Song 
 attr_accessor :name, :artist 
 def initialize(name)
   @name=name
 end
 def artist=(obj_artist)
   @artist=obj_artist
   @artist.add_song(self)
 end
 def self.new_by_filename(filename)
   stuff = filename.split(" - ")
   name = stuff[1]
   artist_name = stuff[0]
   artist = self.new(artist_name)
   artist.save
   song = self.new(name)
   song.artist = artist
   artist.add_song
 end
end