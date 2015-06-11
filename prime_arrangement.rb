def PrimeChecker(num)
  
         
 numbers = num.to_s.split('')
  
 perm = numbers.permutation(numbers.length)
  
 perm.each do |p|
  return -1 if is_prime?(p.join.to_i)
 end
 0
end

def is_prime?(num)
  i = 2
  while i < num
    return false if num % i == 0
  i += 1
  end
  true
end
   
p PrimeChecker(11)