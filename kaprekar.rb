def kaprekar?(k) #55
  n = k.to_s.length #n = 2
  
  test_num = (k ** 2) #3025
  
  digits = test_num.to_s.length  # 4
  
   if  digits.odd? 
     r = test_num.to_s[n-1..-1].to_i
     l = test_num.to_s[0..n-2].to_i
   else digits.even? 
     r = test_num.to_s[n..-1].to_i
     l = test_num.to_s[0..n-1].to_i #2
   end
  
  (l + r == k)
end

p kaprekar?(550)
