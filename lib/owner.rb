class Owner
  attr_accessor :pets

  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@all
  end

end
