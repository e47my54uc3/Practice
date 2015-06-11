# String encoding
# Write a method named encrypt(str) which takes in a string and returns an array of pairs: each pair contains the next distinct letter in the string, and the number consecutive repeats.

# encrypt("aaabbcbbaaa") ==
#   [["a", 3], ["b", 2], ["c", 1], ["b", 2], ["a", 3]]
# encrypt("aaaaaaaaaa") == [["a", 10]]
# encrypt("") == []
# Be careful! You don't just want the overall count of each letter: encrypt("aaabbcbbaaa") != [["a", 6], ["b", 4], ["c", 1]]. So make sure to count consecutive letters, not their overall count.

# Lastly, a common error is to forget to encrypt the last tokens. Make sure that encrypt("aabbcc") == [["a", 2], ["b", 2], ["c", 2]], not [["a", 2], ["b", 2]].

# def encrypt(string)
  
#   keys = []

#   string.split('').each_with_index do |l, i|
#     count = 1

#     while l == string[i + 1]
#       count += 1
#       break if l != string[i + 1]
#     end

#     keys << [l, count]
#   end
#   keys

# end



#same as runlength method


def encrypt(str)
  str = str.split('')

  keys = []

  idx = 0
  current_count = 1
  while idx < str.length
    if str[idx] != str[idx + 1]

      keys << [str[idx], current_count]

      current_count = 1
    else 
      current_count += 1
    end
    idx += 1
  end
   
 keys 
         
end

p encrypt("aaabbcbbaaa")


