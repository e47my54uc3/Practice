
def digital_root_step(num) # take the last number and dump them into an array
    digits = []    
    answer = 0
    
    until num == 0
        digits << (num % 10)
        num = num / 10
    end
    
    digits.each do |result| # OR digits.inject(:+)
        answer += result
    end
    answer
end

p digital_root_step(543)