module Towable
  def can_tow(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0

    @@number_of_vehicles += 1
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

  def age
    "Your #{self.model} is #{age_of_vechile} years old."
  end

  # Class methods
  def self.gas_mileage(gallons, miles)
    mileage = miles / gallons
    puts "#{mileage} miles per gallon of gas."
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  private

    def age_of_vechile
      #((Time.now.year * 12) - (self.year * 12)) / 12
      Time.now.year - self.year
    end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    #"I'm a #{@color} #{@model} created in year #{@year}."
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end  
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(2010, "Ford Focus", "silver")
puts lumina

MyCar.gas_mileage(13, 351)  #=> "27 miles per gallon of gas."

truck = MyTruck.new(2011, "Hilux", "Yellow")
puts truck

Vehicle.number_of_vehicles

puts Vehicle.ancestors
puts MyCar.ancestors
puts MyTruck.ancestors

puts lumina.age
puts truck.age