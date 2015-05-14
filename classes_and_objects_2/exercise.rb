class MyCar
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(miles)
    @current_speed += miles
    puts "You push the gas and accelerate #{miles} mph."
  end

  def brake(miles)
    @current_speed -= miles
    puts "You push the breake and decelerate #{miles} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this car!"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def spray_paint(color)
    self.color = color
    puts "The car is painted #{self.color}."
  end

  # Class method
  def self.gas_mileage(gallons, miles)
    mileage = miles / gallons
    puts "#{mileage} miles per gallon of gas."
  end

  def to_s
    #"I'm a #{@color} #{@model} created in year #{@year}."
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(2010, "Ford Focus", "silver")

MyCar.gas_mileage(13, 351)  #=> "27 miles per gallon of gas."

puts lumina