class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    # self refers to the instance (object) that calls the method, i.e. the calling object.
    self.age += 1
  end
end

meow = Cat.new("Siamese")
puts meow.age
meow.make_one_year_older
puts meow.age