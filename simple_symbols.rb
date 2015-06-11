
def SimpleSymbols(str)
  letter_count = str.scan(/[A-Za-z]/).count
  matches = []
  
  str.split('').each_cons(3) do |cons|
    if cons.join =~ /\+[A-Za-z]\+/
      matches << cons
    end
  end
  matches.count == letter_count
end


def SimpleSymbols2(str)
  characters = str.scan(/\w/)

  characters.each_with_index |test, i|
      if (characters[i - 1] != '+') 
        return false
      elsif (characters[i + 1] != '+')
        return false
      end
  end
true
  
end