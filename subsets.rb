def subsets(arr)
possible_subs = []
arr.each.with_index do |x, i|
    n = 0
    until n == i
     possible_subs << [arr[n]]
     possible_subs << arr[n..i]
     possible_subs << [x]
     n += 1
    end
  end

possible_subs.uniq.unshift([]).sort

end




p subsets(['a', 'b', 'c', 'd'])