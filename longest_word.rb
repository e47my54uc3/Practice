def longest_word(sentence)
  array = sentence.split.sort{|x, y| x.length <=> y.length}
    return array.last
end

p longest_word("Here's the sentence")