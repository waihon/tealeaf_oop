class GoodDog
  attr_accessor :name
  attr_accessor :height
  attr_accessor :weight

  # def initialize(name)
  #   @name = name
  #   puts "This dog was initialized!"
  # end

  # def initialize(name)
  #   @name = name
  #   #puts "#{@name} was initialized!"
  #   puts "#{name} was initialized!"
  # end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # Replaced by attr_accessor :name
  # def name
  #   @name
  # end

  # Replaced by attr_accessor :name
  # def name=(n)
  #   @name = n
  # end

  def speak
    #"#{@name} says arf!"
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

puts sparky.speak
