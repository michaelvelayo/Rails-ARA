class AnimeGenre
	attr_accessor :anime, :genre

	@@all = []

	def self.all
	  @@all
	end

	def initialize(anime, genre)
		@anime = anime
		@genre = genre
		@@all << self
	end
end