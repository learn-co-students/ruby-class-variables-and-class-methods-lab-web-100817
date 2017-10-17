class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
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
    hash = Hash.new(0)
    @@genres.each{|key| hash[key] += 1}
    hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each{|key| artist_hash[key] += 1}
    artist_hash
  end

end
