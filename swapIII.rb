def SwapII(str)

  str.swapcase!
  
  arrs = str.split(" ")
  idx = 0
  while idx < arrs.length
    num = []
    num = arrs[idx].scan(/\d/)
    
    if num.length == 2
      str.sub!(num[1], num[0])
      str.sub!(num[0], num[1])
    end
      
    idx += 1
  end

  str
  
         
end

p SwapII("Hello -5LOL6")

=begin
Have the function SwapII(str) take the str parameter and swap the case 
of each character. Then, if a letter is between two numbers (without separation),
 switch the places of the two numbers. For example: if str 
 is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 
=end