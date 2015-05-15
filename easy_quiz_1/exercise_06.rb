class Cube
  # 1. To allow @volume to be accessed, i.e. get and set
  attr_accessor :volume

  def initialize(volume)
    @volume = volume
  end

  # 2. To allow @volume to be accessed
  def get_volume
    @volume
  end
end

cube = Cube.new(100)
puts cube.volume
cube.volume = 168
puts cube.get_volume
# 3. Access @volume without defining adding anything extra to the class
puts cube.instance_variable_get("@volume")
