nums = [ 4, 5, -1]

negative = nums.map do |int|
    int * (-1)
  end

# p nums

# p negative


def two_sum(nums, n)
  combinations = nums.combination(n)  

  target = combinations.select{|x| x.reduce(0,:+) == 0}.flatten

  indexes = []
  i = 0
  while i < nums.length
    if target.include?(nums[i])
      indexes << i
    end
    i += 1
  end
  
  indexes
  
end

p two_sum([5,-3,-5, 8], 2)