class Parent
  def say_hi
    p "Hi from Parent."
  end
end

Parent.superclass   #=> Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send(message)
    p "Send #{message} from Child..."
  end

  def instance_of?(object)
    "I am a fake instance of #{object}"
  end
end

child = Child.new
child.say_hi                #=> "Hi from Child."
p child.instance_of? Child  #=> true
p child.instance_of? Parent #=> false
son = Child.new
son.send :say_hi            #=> "Send say_hi from Child..."