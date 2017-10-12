require 'pry'

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
    @@artists << self.artist
    @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
    array = []
    @@artists.each do |artist|
      if array.include?(artist) == false
        array << artist
      end
    end
    array
  end

  def self.genres
    array = []
    @@genres.each do |genre|
      if array.include?(genre) == false
        array << genre
      end
    end
    array
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre] == nil
        hash[genre] = 1
      else
        hash[genre] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist] == nil
        hash[artist] = 1
      else
        hash[artist] += 1
      end
    end
    hash
  end




end
