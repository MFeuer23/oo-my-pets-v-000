class Owner
  attr_accessor :pets, :name, :mood
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

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood= "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood= "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end

  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood= "nervous"
    end
    @pets[:dogs].clear

    @pets[:cats].each do |cat|
      cat.mood= "nervous"
    end
    @pets[:cats].clear

    @pets[:fishes].each do |fish|
      fish.mood= "nervous"
    end
    @pets[:fishes].clear
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
