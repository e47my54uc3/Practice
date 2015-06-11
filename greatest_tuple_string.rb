def num_repeats(string)
  
totals =string.chars.map do |x| [x, string.count(x)] end
target = totals.uniq.select {|y| y.last > 1}
end

p num_repeats("testing")