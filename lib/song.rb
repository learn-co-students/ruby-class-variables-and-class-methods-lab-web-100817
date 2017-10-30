
require 'byebug'
class Song
  attr_accessor :name,:artist,:genre
  @@count=0
  @@artists =[]
  @@genres =[]
  @@genre_count = {}
  @@artist_count = {}
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@genre_count[genre] || @@genre_count[genre] = 0
    @@genre_count[genre] += 1
    @@artist_count[artist] || @@artist_count[artist] = 0
    @@artist_count[artist] += 1
    # byebug

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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end



end
# byebug
# lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
