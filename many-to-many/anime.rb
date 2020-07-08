class Anime
	attr_accessor :title

	@@all = []

	def self.all
		@@all
	end

	def initialize(title)
		@title = title
		@@all << self
	end

	def anime_genres
		AnimeGenre.all.select do |anime_genre|
			anime_genre.anime == self
		end
	end

	def genres
		anime_genres.map do |anime_genre|
			anime_genre.genre
		end
	end
end