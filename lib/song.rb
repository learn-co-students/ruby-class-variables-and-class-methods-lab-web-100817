class Song
   @@count = 0
   @@artists = []
   @@genres = []



  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre


  end
  def name
    @name
  end
  def artist

    @@artists << @artist
    @artist

  end
  def genre
    @genre
  end

  def artists
    @@artists
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if !hash.key? (genre)
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
      if !hash.key? (artist)
        hash[artist] = 1
      else
        hash[artist] += 1
      end
    end
    hash

  
  end


end
