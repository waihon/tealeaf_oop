class Greeting
  def greet(message)
    puts message
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

#hello.bye              #=> NoMethodError

#hello.greet            #=> ArgumentError (0 for 1)

hello.greet("Goodbye")  #=> "Goodbye"

#Hello.hi               #=> NoMethodError: hi is not a class method