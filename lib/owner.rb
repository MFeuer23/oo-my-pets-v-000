class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
    @@all
  end

  def species

  end

end
