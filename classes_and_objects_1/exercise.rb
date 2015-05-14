class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
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
end

lumina = MyCar.new(1997, "Chevy Lumina", "white")
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
lumina.color = "black"
puts lumina.color
puts lumina.year
#lumina.year = 2000  #=> undefined method `year='
lumina.spray_paint("dark blue")