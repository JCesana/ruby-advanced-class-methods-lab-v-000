class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = Song.new 
    song.name = @name 
    @@all << song 
    song 
  end 
  
  def self.new_by_name(song_name)
    song = Song.new 
    song.name = song_name
    song
  end 
  
  def self.create_by_name(song_name)
    @name = name
    Song.create 
  end 
  
  def self.find_by_name(song_name)
    self.all.detect { |song| song.name == song_name }
  end 
  
  def self.find_or_create_by_name(song_name)
    if Song.find_by_name(song_name)
      Song.find_by_name(song_name)
    else 
      Song.create_by_name(song_name)
    end 
  end 
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end 
  
  def self.new_from_filename(song_name)
    
  end 
end












