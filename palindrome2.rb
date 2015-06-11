
def longest_palindrome(string)
  

  string.length.downto(0) do | ind |

    0.upto(string.length - ind) do |substr_i|
      s = string.slice(substr_i, ind)
      return s if s == s.reverse
      end
  end
end

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

p longest_palindrome('abcbd')