
def crazy_nums(max)

  range = (1..(max - 1)).to_a

  less_than = range.reject {|x| (x % 5 == 0) && (x % 3 == 0) }

  result = less_than.select {|y| y % 3 == 0 || y % 5 == 0 }

end

p crazy_nums(20)