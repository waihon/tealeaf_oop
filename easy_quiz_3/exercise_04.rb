class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{@type} cat"
  end

  def display_type
    puts "I am a #{@type} cat"
  end
end


tappy_cat = Cat.new("tappy")
puts tappy_cat
tappy_cat.display_type