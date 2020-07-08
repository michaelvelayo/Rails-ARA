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

  def characters
    Character.all.select { |character| character.anime == self }
  end
  
  def new_character(character)
    Character.new(character, self)
  end

end

