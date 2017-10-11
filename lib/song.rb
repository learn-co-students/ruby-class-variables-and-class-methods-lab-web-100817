class Song

  @@count = 0
  @@songs = []
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@songs << song
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.songs
    @@songs
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    new_hash = {}
    @@genres.each { |genre| new_hash[genre] ? new_hash[genre] += 1 : new_hash[genre] = 1 }
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each { |artist| new_hash[artist] ? new_hash[artist] += 1 : new_hash[artist] = 1 }
    new_hash
  end

end
