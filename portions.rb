def portions(string)
   sub = []
   string.scan(/\w/).each_with_index do |char, i|
     n = 0
     while n < (string.length)
       sub << string[n..i]
     n += 1
     end
   end
     
     sub.select {|y| y.length > 2}
   
 end

 p portions("something")