def puppy_golden_age(arr)

  possible_subs = []


  arr.each.with_index do |x, i|
    n = 0
    until n == i
     possible_subs << arr[n..i]
     n += 1
    end
  end


  max = possible_subs.max_by do |sub|  
    sub.reduce(:+) 
  end  


  [arr.index(max[0]), arr.index(max[-1])]
end




p puppy_golden_age([5, 3, -5, 1, 19, 2, -4])


# def two_sum(nums, n)
#   combinations = nums.combination(n)  

#   target = combinations.select{|x| x.reduce(0,:+) == 0}.flatten

#   indexes = []
#   i = 0
#   while i < nums.length
#     if target.include?(nums[i])
#       indexes << i
#     end
#     i += 1
#   end
  
#   indexes
  
# end

# ef longest_palindrome(ar1)

#   possible_subs = []

#   ar1.each_char.with_index do |x, i|
#     if x =~ /\w/
#       n = 0
#       until n == i
#        possible_subs << ar1[n..i]
#        n += 1
#       end
#     end
#   end

#   strings = possible_subs.select {|sub| sub.length > 2}

#   reverse = strings.map {|sub| sub.reverse}

#   longest_sub = (strings & reverse).max_by {|x| x.length}

# end
