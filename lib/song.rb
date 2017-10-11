class Song
	@@all = []
	@@artists = []
	@@count = 0
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
		@@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
	end

	def self.artist_count
		@@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
	end
end
