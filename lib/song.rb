class Song

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  attr_accessor :name, :artist, :genre

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
    unique_genres = Array.new
    @@genres.each {|genre| unique_genres << genre if unique_genres.include?(genre) == false}
    unique_genres
  end

  def self.artists
    unique_artists = Array.new
    @@artists.each {|artist| unique_artists << artist if unique_artists.include?(artist) == false}
    unique_artists
  end

  def self.genre_count
    genre_count_hash = Hash.new
    @@genres.each do |genre|
      if genre_count_hash[genre] == nil
        genre_count_hash[genre] = 1
      else
        genre_count_hash[genre] += 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = Hash.new
    @@artists.each {|artist| artist_count_hash[artist] == nil ? artist_count_hash[artist] = 1 : artist_count_hash[artist] += 1}
    artist_count_hash
  end

end
