class Owner
    attr_accessor :name, :pets
	  attr_reader :species
  @@all = []

   def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.length 
  end

  def say_species 
		"I am a #{species}."
	end
def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

   def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

   def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

def walk_dogs
  pets[:dogs].each do |dog|
    dog.mood = "happy"
   end
   
 end
 def play_with_cats
   pets[:cats].each do |dog|
    dog.mood = "happy"
end

end 
def  feed_fish
  pets[:fishes].each do |dog|
    dog.mood = "happy"
end
end
def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end