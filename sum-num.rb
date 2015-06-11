

def sum_nums(num)
  (0..num).reduce(0) {|acc, x| acc + x}
end


p sum_nums(5)