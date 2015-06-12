

def binary_search(num, ary, index = 0)
  return false if ary.length == 1
  midpoint = ary.length/2
  index += midpoint if index == 0
  return index if ary[midpoint] == num

  if ary[midpoint] > num
    lower_ary = ary[0..midpoint]
    index -= lower_ary.length/2
    binary_search(num, lower_ary, index)

  elsif ary[midpoint] < num
    higher_ary = ary[midpoint..-1]
    index += higher_ary.length/2
    binary_search(num, higher_ary, index)
  end
end

arr = [13, 19, 24, 29, 32, 37, 43]
p binary_search(32, arr)