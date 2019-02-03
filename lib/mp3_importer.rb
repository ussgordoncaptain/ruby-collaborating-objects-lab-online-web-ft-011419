class MP3Importer 
  def initialize(path)
    @path = path
  end
  attr_accessor :path
  def files
    @files = Dir.chdir(@path) {  Dir.glob("*.mp3") }
  end
  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
  
    
end