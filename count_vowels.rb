def count_vowels(string)
  count = 0
  string.each_char do |x|
    if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u')
      count += 1
    end
  end
  count
 
  
end

p count_vowels('colors')


#or

=begin
string.count('aeiou')
=end