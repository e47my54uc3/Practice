def BracketMatcher(str)
count_left = 0
count_right = 0
  str.each_char do |bracket|
    if bracket =~ /\)/
      count_right += 1
    elsif bracket =~ /\(/
      count_left += 1
    end
  end
  
  if count_right == count_left
    return 1
  end
  0
         
end
   

def bracket_matcher(str)

  brackets = str.scan(/[\(\)]/)

  left = brackets.count('(')

  right = brackets.count(')')

  if left == right
    return 1
  end
  0
end


p bracket_matcher('haw')