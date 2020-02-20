require 'pry'
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@artists = []
  
  @@genres = []
  
  @@genre_hash = {}
  
  # @@artist_hash  {}
  
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
  
  genre_hash = {}
  
  @@genres.each do |genre|
    if genre_hash[genre]
      genre_hash[genre] += 1
    else
      genre_hash[genre] = 1
    end
  end
  genre_hash
  
  end
  
end
  
#   def self.artist_count
    
#     @@artist_hash << @@count
#   end
# end


