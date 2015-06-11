def house_of_cards(floors)
  raise StandardError unless floors>0
  n=floors+1
  (1..n).inject(:+)*3-n
end


# recursive solution

def house_of_cards(floors)
  raise ArgumentError, 'the number of floors must be greater than 0' if floors < 1
  if floors == 1
    7
  else
    house_of_cards(floors - 1) + floors + 2 * (floors + 1)
  end
end