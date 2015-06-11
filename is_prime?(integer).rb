def is_prime?(integer)
  
  i = 2
  while i < integer
    if (integer % i == 0)
      return false
    end
    
    
  i += 1
  end
  return true
end

def nth_prime(target)
  
  
  result_array = [1]
  x = 2
  while x <= target
  
    if is_prime?(x)
      result_array << x
    end
  x += 1
  end
  
  result_array.last
end

p nth_prime(4)