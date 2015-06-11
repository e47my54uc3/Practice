def word_unscrambler(str, words)
  results = []
  words.each do |x|
    if x.split('').sort.join('') == str.split('').sort.join('')
      results << x
    end
  end
  results
end

p word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])