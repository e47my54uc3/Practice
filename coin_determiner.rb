def CoinDeterminer(num)

  values = [1,5,7,9,11]
  
  n = 1
  while n <= num
    coms = values.combination(n).to_a
    coms.each {|x| return n if x.reduce(:+) == num}
  n += 1
  end
         
end
   
=begin

So for example: if num is 16, then the output should be 2 
because you can achieve the number 16 with the coins 9 and 7. 
If num is 25, then the output should be 3 because you can achieve 
25 with either 11, 9, and 5 coins or with 9, 9, and 7 coins. 
=end