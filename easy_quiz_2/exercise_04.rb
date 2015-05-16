class BeesWax
  attr_accessor :type

  def initialize(type)
    self.type = type
  end

  def describe_type
    puts "I am a #{type} type of Bees Wax"
  end
end

oriental_bees_wax = BeesWax.new("Oriental")
oriental_bees_wax.describe_type
european_bees_wax = BeesWax.new("European")
european_bees_wax.describe_type