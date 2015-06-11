def all_squared_pairs(num) 
 (0..Math.sqrt(num)).each_with_object([]) { |e, a|
   b = Math.sqrt(num - e**2)
   a << [e, b.to_i].sort if b.to_i == b
 }.uniq
end