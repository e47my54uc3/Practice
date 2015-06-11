def ArrayAdditionI(arr)
  largest = arr.max
  new_arr = arr.reject {|i| i == largest }

  for i in 2..(new_arr.count) do
    coms = new_arr.combination(i).to_a
    return true if coms.any? { |c| c.reduce(:+) == largest }
  end
  return false
end

p ArrayAdditionI([1,2,90])

#incomplete