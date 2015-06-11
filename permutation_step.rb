=begin
#  Have the function PermutationStep(num)
#  take the num parameter being passed and return the next number greater than num using the same digits. 
#  For example: if num is 123 return 132, if it's 12453 return 12534. 
#  If a number has no greater permutations, return -1 (ie. 999). 
=end
 

def PermutationStep(num)

  digits = num.to_s.split('')
  
  available_set = digits.permutation(digits.length).to_a
  
  greater = available_set.select{|x| (x.join.to_i) > num}
  
  return -1 if greater.empty?
  
  greater.sort.first.join.to_i
  
  
end


