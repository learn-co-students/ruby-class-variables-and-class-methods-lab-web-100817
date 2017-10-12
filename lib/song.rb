class Song
  @@genres =[]
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)


  end

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq!
  end


  def self.genres
    @@genres = @@genres.uniq!

  end
  #
  def self.genre_count

    @@genres.each do |i|
      if @@genre_count[i] == nil
        @@genre_count[i] = 1
      else
        @@genre_count[i] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count

    @@artists.each do |i|
      if @@artist_count[i] == nil
        @@artist_count[i] = 1
      else
        @@artist_count[i] += 1
      end
    end
    @@artist_count
  end

  # @@artists = artist
  # @@count = 0

end
