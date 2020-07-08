#!/usr/bin/env ruby
require 'pry'
require_relative './character'
require_relative './anime'

#Object Creation
anime1 = Anime.new('One piece')
anime2 = Anime.new('One punch man')

Character.new('Monkey D. Luffy',anime1)
Character.new('Nami', anime1)
Character.new('Saitama', anime2)

binding.pry


#Pry.start
