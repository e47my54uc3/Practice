def RunLength(str)
  str = str.split('')
  new_str = ""
  idx = 0
  current_count = 1
  while idx < str.length
    if str[idx] != str[idx + 1]
      new_str += current_count.to_s + str[idx]
      current_count = 1
    else 
      current_count += 1
    end
    idx += 1
  end
   
  return new_str 
         
end

# p RunLength("mousesssezz")

def RunLength2(str)
  chunks = str.scan(/((\w)\2*)/)
  
  output = ''
  chunks.each do |chunk|
    output << chunk[0].size.to_s + chunk[1]
  end
  
  output
end

p RunLength('aaabbbaa')

"3a3b2a"