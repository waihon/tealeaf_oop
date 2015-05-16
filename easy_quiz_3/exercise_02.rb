class Greeting
  def greet(message)
    puts message
  end

  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Good < Greeting
  def bye
    greet("Gooodbye")
  end
end

hello = Hello.new

hello.hi                #=> "Hello"

hello.greet("Goodbye")  #=> "Goodbye"

Hello.hi                #=> "Hello"