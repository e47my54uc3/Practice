# Write a method named one_off_words(str, word_list) which takes in a string and an array of valid words (the word_list). It should return an array of words from the word_list which are the same except for a single letter at a single position.

# Do not return words of that differ in length from str.

# For instance, "boot" and "boom" are nearby (differ in 4th letter), but "loot" and "tool" are not (differ in first and fourth letters). Note that position matters.

# Here's an example of the method:

# WORDS = ["door", "moot", "boot", "boots"]
# one_off_words("moor", WORDS) == ["door", "moot"]
# You may assume that the input string and word list contain only lower case letters.

def one_off_words(str, word_list)
  potentials = []
  result = []
  letter_arry = ('a'..'z').to_a

  

  str.split('').each do |l|
  i = 0
    while i < 26
     potentials << str.sub(l, letter_arry[i])
     i += 1
    end
  end

  word_list.each do |key| 
  i = 0
    while i < potentials.length

    if  potentials[i] == key
      result << key
    end
    i += 1
  end
end
result



end

p one_off_words('moor', ["door", "moot", "boot", "boots"])

