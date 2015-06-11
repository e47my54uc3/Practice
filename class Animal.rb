class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def eat(other)
    puts "#{@name} ate #{other.name}! #{self.noise}"
  end
end

class Human < Animal
  attr_accessor :catchphrase

  def initialize(ogre, catchphrase)
    super(ogre)
    @catchphrase = catchphrase
  end

  def noise
    @catchphrase
  end

  def eat(other)
    puts "#{@name} ate #{other.name}! #{noise}"
  end

end

class Englishman < Human
  def initialize(name = "Mick Jagger")
    super(name, "I can't get no....")
  end
end


h = Human.new("Adam", "Right on!")
a = Animal.new("Chicken")
h.eat(a)
#=> "Adam ate Chicken! Right on!"