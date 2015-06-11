def palindrome?(argument)

 argument.downcase.scan(/\w+/).join('') == argument.reverse

end


def longest_palindrome(ar1)

  possible_subs = []

  ar1.each_char.with_index do |x, i|
    if x =~ /\w/
      n = 0
      until n == i
       possible_subs << ar1[n..i]
       n += 1
      end
    end
  end

  strings = possible_subs.select {|sub| sub.length > 2}

  reverse = strings.map {|sub| sub.reverse}

  longest_sub = (strings & reverse).max_by {|x| x.length}

end

p longest_palindrome('someseres')