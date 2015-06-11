def multiply_by_two(arr)
  arr.map {|x| x*2}
end

def median(arr)
  arr.sort!
  lth = arr.length

  if lth.odd?
    return arr[(lth/2)]
  else
    return (arr[lth/2 -1] + arr[lth/2]).fdiv(2)
  end
end


def concatenate(string_arr)
  string_arr.inject{|a,e| a + e}
end

p concatenate(["Yay ", "for ", "strings!"])