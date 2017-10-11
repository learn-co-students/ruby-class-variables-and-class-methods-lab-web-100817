require "pry"
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist 
    @@genres << genre 
  end

  def self.count
    @@count
  end

  def self.genres
    ret = []
    @@genres.each {|genre| ret << genre if not ret.include?(genre)}
    ret
  end

  def self.artists
    ret = []
    @@artists.each {|artist| ret << artist if not ret.include?(artist)}
    ret
  end

  def self.genre_count
    #genre_counts = Hash.new 0
    #@@genres.each {|genre| genre_count[genre] += 1}
    #genre_counts
    @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }

  end
end


