require 'pry'
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@artists = []
  
  @@genres = []
  
  @@genre_hash = {}
  
  def initialize(name,artist,genre)
    
    @@count += 1
    @@artists << artist
    @@genres << genre
    
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    
    @@genre_hash = Hash{@@genres.collect { |genre,count| @@genres.uniq, @@count } }
    
  end
end

#song = Song.new("Corduroy","Pearl Jam","Alternative")
  
#puts song.artist
#puts song.genre
