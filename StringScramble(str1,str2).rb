def StringScramble(str1,str2)
  str2.each_char do |char|
    return false  unless str1.include?(char)
      end  
  true
end

p StringScramble("howdy", "howsidytgoing")