def ABCheck(str)
  checker = false
  str = str.downcase.split('')
  str.each_with_index do |char, idx|
    if char == 'a' && str[idx + 4] == 'b'
      return true
    elsif char == 'b' && str[idx + 4] == 'a'
      return true
    end
  end
  false 
end


def ab_checker(str)
  return true if str.match(/(a...b)|(b...a)/)
  false
end

p ab_checker('brsaa')
