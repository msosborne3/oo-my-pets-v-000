class Owner
  OWNERS = []
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def say_species
    "I am a #{species}."
  end

  def sell_pets
    @pets[:dogs].each{|dog| dog.mood = "nervous"}
    @pets[:cats].each{|cat| cat.mood = "nervous"}
    @pets[:fishes].each{|fish| fish.mood = "nervous"}
    @pets[:dogs] = []
    @pets[:cats] = []
    @pets[:fishes] = []
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end