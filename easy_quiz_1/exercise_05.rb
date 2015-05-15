class Fruit
  def initialize(name)
    # Assigning to a local variable
    name = name
  end
end

class Pizza
  def initialize(name)
    # Assigning to an instanace variable
    @name = name
  end
end

apple = Fruit.new("Apple")
veg_pizza = Pizza.new("Vegie Pizza")
p apple.instance_variables      #=> []
p veg_pizza.instance_variables  #=> [:@name]