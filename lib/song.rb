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
    
  @@genre_hash = Hash[@@genres.each do |genre,count| 
    if @@genre.uniq,
      return @@genre.count]
    else
    end
  end
   
   #@@genre_hash = Hash[@@genres.collect {|genre,count| [@@genres,@@count]}]
 #end
  end
  
#   def self.artist_count
    
#     @@artist_hash << @@count
#   end
# end


