class GoodDog
  # Constant
  DOG_YEARS = 7

  # Accessor methods - both getters and setters
  attr_accessor :name
  attr_accessor :height
  attr_accessor :weight
  attr_accessor :age

  # Class variable
  @@number_of_dogs = 0

  # Initialize a new object
  def initialize(n, h, w, a)
    # Instance variables
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * DOG_YEARS

    @@number_of_dogs += 1

    puts "#{self.name} was initialized!"
  end

  # Replaced by attr_accessor :name
  # def name
  #   @name
  # end

  # Replaced by attr_accessor :name
  # def name=(n)
  #   @name = n
  # end

  # Instance method
  def speak
    #"#{@name} says arf!"
    #"#{name} says arf!"
    "#{self.name} says arf!"
  end

  def change_info(n, h, w)
    #@name = n; @height = h; @weight = w
    # Below are treated as variables local to change_info, instead of call setters
    #name = n; height = h; weight = w
    # Below call the setters, which change the underlying instance variables.
    self.name = n; self.height = h; self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight}, is #{self.height} tall, " + 
      "and it is #{self.age} in dog years."
  end

  def what_is_self
    self
  end

  # Class methods
  def self.who_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{name}, weighs #{self.weight}, is #{self.height} tall, " + 
      "and it is #{age} in dog years."
  end

  puts self
end

puts GoodDog.total_number_of_dogs   #=> 0

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
puts sparky.info

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

puts sparky.speak

puts GoodDog.who_am_i

spotty = GoodDog.new("Spotty", "18 inches", "36 lbs", 5)
puts spotty
p spotty.what_is_self

puts GoodDog.total_number_of_dogs   #=> 2