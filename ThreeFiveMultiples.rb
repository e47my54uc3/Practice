def ThreeFiveMultiples(num)
sum_arry = []
  
  (1...(num)).to_a.map do |x|
   if (x % 3 == 0) || (x % 5 == 0)
    sum_arry << x
   end
  end
sum_arry.reduce(0,:+)
end
   