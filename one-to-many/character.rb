class Character
  attr_reader :anime
  attr_accessor :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, anime)
    @name = name
    @anime = anime
    @@all << self
  end
  
  def title
   @anime.title
  end
end

