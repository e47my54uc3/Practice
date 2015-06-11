=begin
Have the function DashInsertII(str) insert dashes ('-')
between each two odd numbers and insert asterisks ('*')
between each two even numbers in str. For example: if str is 4546793 
the output should be 454*67-9-3. Don't count zero as an odd or even number. 
=end

def DashInsertII(num)
  number = num.to_s.split('')
  new_s = ""
  number.each_with_index do |char, i|
    if char =~ /[13579]/ && number[i + 1] =~ /[13579]/
      new_s << char << '-'
    elsif char =~ /[2468]/ && number[i + 1] =~ /[2468]/
      new_s << char << '*'
    else
      new_s += char
    end
  end
  new_s
end