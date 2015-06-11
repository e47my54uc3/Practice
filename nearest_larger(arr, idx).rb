def nearest_larger(arr, idx)
  target = arr[idx]
  value_list = []
  
  arr.each_with_index do |value, i|
    if arr[i] > target
      value_list << [value, i]
    end 
  end

  if value_list.empty?
    nil
  else
    value_list.min_by{|y| (idx - y[-1]).abs}[-1]
  end
end


p nearest_larger([2, 6, 9, 4, 8], 3)