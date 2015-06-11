def letter_count(str)
  string_arry = str.scan(/\w/)
  grouping = string_arry.group_by {|x| x}
  h = Hash[grouping.map {|k,v | [k, v.size] }]
end




p letter_count('chicke n')


def letter_count2(str)
  count = Hash.new(0)
  
  str.scan(/\w/) {|char| count[char] += 1 }

  count
end


=begin

following is to check which word has the most number of repeated letter in a string
ex "title case" -- will return "title"

=end

# def LetterCount(str)
#   words = str.split
#   return -1 if words.all? {|w| max_dups_in(w) == 1 }
  
#   words.max_by { |word| max_dups_in(word) }       
# end

# def max_dups_in(word)
#   most_repeated = word.chars.max_by { |char| word.count(char) }
#   word.count(most_repeated)
# end