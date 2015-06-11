


def ordered_vowel_words(str)
  words = str.split(" ")

  ordered_vowel_words = words.select do |word|
    ordered_vowel_word?(word)
  end

  ordered_vowel_words.join(" ")
  
end

def ordered_vowel_word?(word)

ord_check = ""
  word.each_char do |v|
    if v == 'a' || v == 'e' || v == 'i' || v == 'o' || v == 'u'
      ord_check = ord_check + v
    end
  end
    
ord_check == ord_check.split('').sort.join('')

end

p ordered_vowel_words("this is a test of the vowel ordering")