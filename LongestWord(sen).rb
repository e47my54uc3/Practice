def LongestWord(sen)



words = sen.scan(/[a-zA-Z]+/)

words.sort {|x, y| x.length <=> y.length }.last
         
end

p LongestWord("fun&!! timr00rre")


