class AngryCat
  def initialize(age, name)
    @age = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

siam = AngryCat.new(2, "Siam")
siam.age
siam.name
pers = AngryCat.new(3, "Pers")
pers.age
pers.name