def TripleDouble(num1,num2) 
  digs = num1.to_s.split('').uniq
  
  digs.each do |i|
    if num1.to_s.include?("#{i}#{i}#{i}") && num2.to_s.include?("#{i}#{i}")
      return 1
    end
  end
  return 0
end

def TripleDouble(num1,num2)
  key = nil
  num1 = num1.to_s.split('')
  num1.each_with_index do |char, i|
   if (char == num1[i + 1]) && (char == num1[i + 2])
     key = char
     break
   end
  end
  
  num2 = num2.to_s.split('')
    num2.each_with_index do |check, i|
    if (check == key) && (num2[i + 1] == check)
       return 1
    end
  end
  
  0
         
end


