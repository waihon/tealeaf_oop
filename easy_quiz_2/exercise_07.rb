class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    # Keep track of cat instances created
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

puts Cat.cats_count       #=> 0
siam = Cat.new("Siamese")
puts Cat.cats_count       #=> 1
pers = Cat.new("Persian")
puts Cat.cats_count       #=> 2
