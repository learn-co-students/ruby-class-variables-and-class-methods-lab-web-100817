class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

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

  def self.artists
    @@artists.uniq.each do |artist|
      puts artist
    end
  end

  def self.genres
    @@genres.uniq.each do |genre|
      puts genre
    end
  end

  def self.genre_count
    count = {}
    count = @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.artist_count
    count = {}
    count = @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
    end
end
