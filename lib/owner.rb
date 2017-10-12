  require 'pry'
class Owner
  # code goes here
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].collect{|key| key.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].collect{|key| key.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].collect{|key| key.mood = "happy" }
  end

  def sell_pets
    self.pets[:fishes].collect{|key| key.mood = "nervous" }
    self.pets[:cats].collect{|key| key.mood = "nervous" }
    self.pets[:dogs].collect{|key| key.mood = "nervous" }
    self.pets = []
  end

  def list_pets
    "I have #{self.pets[:fishes] = nil ? 0 : self.pets[:fishes].length} fish, #{self.pets[:dogs] = nil ? 0 : self.pets[:dogs].length} dog(s), and #{self.pets[:cats] = nil ? 0 : self.pets[:cats].length} cat(s)."
  end

end
