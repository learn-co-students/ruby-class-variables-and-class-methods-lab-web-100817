class Song

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
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
    gen_ct = {}
    self.genres.each do |gen|
      ct = 0
      @@genres.each{|raw| ct += 1 if gen == raw}
      gen_ct[gen] = ct
    end
    gen_ct
  end

  def self.artist_count
    gen_ct = {}
    self.artists.each do |gen|
      ct = 0
      @@artists.each{|raw| ct += 1 if gen == raw}
      gen_ct[gen] = ct
    end
    gen_ct
  end

end
