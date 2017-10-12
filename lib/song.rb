require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    @@genres.each_with_object(Hash.new(0)) { |genre, count| count[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist, count| count[artist] += 1 }
  end

end
