require 'pry'
require_relative './anime'
require_relative './genre'
require_relative './anime_genre'

anime1 = Anime.new("Code Geas")
anime2 = Anime.new("Highschool DXD")

genre1 = Genre.new("Action")
Genre.new("Romance")
Genre.new("Comedy")
Genre.new("Harem")

AnimeGenre.new(anime1, Genre.all[0])
AnimeGenre.new(anime1, Genre.all[1])
AnimeGenre.new(anime2, Genre.all[0])
AnimeGenre.new(anime2, Genre.all[1])
AnimeGenre.new(anime2, Genre.all[2])
AnimeGenre.new(anime2, Genre.all[3])


binding.pry