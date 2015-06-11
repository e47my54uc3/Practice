class UnitedStatesPresident
  attr_accessor :age, :party

  def initialize(years, party)
    @age, @party = years, party
  end

  def self.citizenship
    "United States of America"
  end
end

class GermanyPresident
    attr_accessor :age, :party

    def initialize(years, party)
        @age, @party = years, party
    end

    def self.citizenship
      "Germany"
    end
end

class FrancePresident
  attr_accessor :age, :party

  def initialize(years, party)
      @age, @party = years, party
  end
  def self.citizenship
      "France"
  end
end

f = FrancePresident.new(55, "republican")

p FrancePresident.citizenship