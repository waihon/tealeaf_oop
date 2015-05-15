class Cube
  attr_accessor :volume

  def initialize(volume)
    @volume = volume
  end
end

rubik_cube = Cube.new(180)
puts rubik_cube.to_s  
#=> Class name followed by encoded object id, e.g. #<Cube:0x007fa2fd87c0b0>