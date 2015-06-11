def crazy_sum (array)
  results = []
  array.each_with_index do |x, i|
    results << (x * i)
  end

  results.reduce(:+)
end

 p crazy_sum([2, 3, 5, 2])