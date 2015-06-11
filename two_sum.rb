def two_sum(arry)
  
  arry.each_with_index do |x, i|
    arry.each_with_index do |j, k|

      if x + j == 0
        return [i, j]
      end
    end
  end
  nil

end

p two_sum([1, 3, 5, -3, 3])

def two_sum(arry)
  i = 0
  while i < arry.length
    check = arry[i]
    arry[0.. -1].each_with_index do |x, index|
      if x + check == 0
        return [i, index]
      end
    end
    
  i += 1
  end
  return nil
end