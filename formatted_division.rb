def FormattedDivision(num1,num2)

 number = num1.fdiv(num2)
  
 parts = number.to_s.split('.')
 front = parts[0]
  
 backwards = front.split('').reverse
 
 result = []
 backwards.each_with_index do |x, i|
   result << x
   if (backwards.length > 3) && ((i+1) % 3 == 0)
       result << ','
   end    
 end
  
  front = result.join('').reverse
  
  
  back = parts[1]
  
  if back.length >= 4
    back = number.round(4).to_s.split('.')[1]
  else
    back += '0' until back.length == 4
  end

  formatted = []
  formatted << front
  formatted << back
  
  formatted.join('.')
  
end
   
p FormattedDivision(100, 3222)

def FormattedDivision(num1,num2)
  sum = sprintf('%.4f', num1.to_f/num2.to_f).to_s

#   sprintf(format_string [, arguments...] ) → string click to toggle source
# Returns the string resulting from applying format_string to any additional arguments. 
# Within the format string, any characters other than format sequences are copied to the result.

#%[flags][width][.precision]type
  
  left  = sum.split('.')[0]
  right = sum.split('.')[1]
  
  left = left.reverse.scan(/.{1,3}/).join(',').reverse
  
  return "#{left}.#{right}"
         
end

