class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  # The self refers to the class itself, in this case Cat.
  def self.cats_count
    @@cats_count
  end
end

puts Cat.cats_count   #=> 0
meow = Cat.new("Siamese")
puts Cat.cats_count   #=> 1
puss = Cat.new("Persian")
puts Cat.cats_count   #=> 2