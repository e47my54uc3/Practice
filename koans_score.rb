def score(dice)
  ones = []
  others = []
  fives = []

  result = []

  dice.each do |die|
    if die == 1
      ones << 1
    elsif die == 5
      fives << 5
    else
      others << die
    end
  end

  others.each do |o|
    if others.count(o) >= 3
       others.delete(o)
       result << (o * 100)
    end
  end
   

  if ones.length < 3
    result << (ones.length * 100)
  else
    result << 1000
    3.times {ones.pop}
    result << (ones.length * 100)
  end
 

  if fives.length < 3
    result << (fives.length * 50)
  else
    result << 500
    3.times {fives.pop}
    result << (fives.length * 50)
  end

  result.reduce(0, :+)

end

p score([5])