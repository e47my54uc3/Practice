def SimpleMode(arr)

frequency = Hash.new(0)

arr.each {|val| frequency[val] += 1 }
frequency
         
end


def simple_mode(arr)
  frequency = arr.reduce(Hash.new(0)){|hash, v| hash[v] += 1; hash}
  arr.max_by{|x| frequency[x]}
end

p simple_mode([5,0,2,2,1])


