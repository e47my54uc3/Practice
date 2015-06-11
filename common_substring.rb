def substring(str)
 
 subst_possibles = []

 str.each_char.with_index do |x, i|
  n = 0
  if x =~ /\w/
    until n == (str.length - 1)
    subst_possibles << str[n..i]
    n += 1
    end
  end

end

subst_possibles.select {|x| x.length >= 3}
end

def common_substring(str1, str2)
  str1_possibles, str2_possibles  = substring(str1), substring(str2)

  common = []

  str2_possibles.select do |x| 
    if str1_possibles.include?(x)
     common << x
    end
  end

  result = common.sort{|x| x.length}.last

  if result.nil?
    ""
  else
    result
  end
end

p common_substring("alpha", "ralphro")