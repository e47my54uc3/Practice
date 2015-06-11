class President
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def citizenship
    self.class.citizenship
  end
end

class UnitedStatesPresident < President
  def self.citizenship
    "The United States of America"
  end
end

class FrancePresident < President
  def self.citizenship
    "La France"
  end

   def age
     "#{super}, #{catchphrase}"
   end
 
   def name
     "#{super}, #{catchphrase}"
   end
 
   def citizenship
     "#{super}, #{catchphrase}"
   end
 
   def catchphrase
     "bien sur"
   end
end

p = President.new("steve", 38)

p.UnitedStatesPresident.citizenship

puts p

puts pU

