def is_power_of_two?(num)
   if num == 1
      return true
   elsif num == 0
     return false
   end
  num.downto(2) do |x|
    if x % 2 == 0
      return true
    end
  end
  
  false
  
end


p is_power_of_two?(78)