def letterChanges(str)

letters =  ('a'..'z').to_a

string = str.split('')

 new_s = string.map! do |x|
    if x == 'z'
      x = 'a'
    elsif
      x == 'a'
      x = 'b'
    elsif x > 'a' && x < 'z'
      x = x.next
    else
      x = x
    end
  end

new_s.map! do |char|
  if char =~ /[aeiou]/
    char.upcase
  else
    char
  end
end

  
end

p letterChanges('s1ze')

def CaesarCipher(str,num)
  new_str = ""
  
  str.each_char do |char|
    if char =~ /[A-Za-z]/
      num.times do
        char.succ!
        char = char[0,1] if char.length > 1
      end
    end
    new_str << char
  end
  new_str
end

p CaesarCipher('wowza', 3)
   