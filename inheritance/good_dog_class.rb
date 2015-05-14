module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Climable
  def clim
    "I'm climbing!"
  end
end

module Walkable
  def walk
    "I'm walking!"
  end
end

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello"
  end

  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected
    def a_protected_method
      "Yes, I'm protected!"
    end
end

# Namespacing
module Mammal
  class Mammal < Animal
  end

  class GoodDog < Mammal
    include Climable
    # The last mixed-in module will be higher in method lookup path
    include Swimmable

    def initialize(color)
      super   # Call Animal's initialize and pass color as argument to name
      @color = color
    end

    def speak
      "#{self.name} says arf!"
    end
  end

  class BadDog < Animal
    include Swimmable

    # Constant
    DOG_YEARS = 7

    attr_accessor :age    

    def initialize(age, name)
      super(name)
      self.age = age * DOG_YEARS
    end

    def public_disclosure
      #"#{self.name} in human years is #{human_years}."
      "#{self.name} in human years is #{self.human_years}."
    end

    #private
    # From outside the class, protected methods act just like private methods.
    # Prom inside the class, protected methods are accessible lust like public methods.
    protected
      def human_years
        self.age / DOG_YEARS
      end    
  end

  # Container for module methods
  def self.some_out_of_place_method(num)
    num ** 2
  end
end

class Cat < Animal
  def speak
    super + " from Cat class"
  end
end

class Fish < Animal
  # Mixing in Swimmable module
  include Swimmable
end

sparky = Mammal::GoodDog.new("brown")
puts sparky.speak   #=> Hello!
puts sparky.swim

paws = Cat.new("black")
puts paws.speak     #=> Hello from Cat class
#paws.swim          # Undefined method

bear = Mammal::BadDog.new(5, "Bear")
p bear
puts bear.swim
#puts bear.human_years   # Error calling a private method
puts bear.public_disclosure

neemo = Fish.new("Neemo")
neemo.swim

puts Animal.ancestors
puts Mammal::GoodDog.ancestors
puts GoodDog.superclass   #=> Mammal::Mammal

# The preffered way of calling module method
puts Mammal.some_out_of_place_method(4)
puts Mammal::some_out_of_place_method(4)

fido = Animal.new("Fido")
puts fido.a_public_method
puts fido.a_protected_method  # Error calling a protected method