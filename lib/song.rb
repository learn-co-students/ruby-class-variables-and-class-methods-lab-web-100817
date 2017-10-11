class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hist = {}
    @@genres.uniq.each do |genre|
      genre_hist[genre] = @@genres.count(genre)
    end
    genre_hist
  end

  def self.artist_count
    artist_hist = {}
    @@artists.uniq.each do |artist|
      artist_hist[artist] = @@artists.count(artist)
    end
    artist_hist
  end
  
end
