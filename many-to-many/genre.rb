class Genre
	attr_accessor :name

	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all << self
	end

	def anime_genres
		AnimeGenre.all.select do |anime_genres|
			anime_genres.genre == self
		end
	end

	def animes
		anime_genres.map do |anime_genre|
			anime_genre.anime
		end
	end
end