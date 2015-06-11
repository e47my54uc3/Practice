def NumberEncoding(str)
  code = {}
  
  letters = ('a'..'z').to_a
  
  letters.each_with_index do |e, i|
    code[e] = (i + 1)
  end

  str.downcase.gsub(/[a-z]/, code)

=begin 
this is equivalent to th below, but cleaner
=end

  # str.downcase.gsub(/[a-z]/) {|x| code[x]}
  
  # characters = str.downcase.split('')
  
  # result = []
  
  # characters.map do |char|
  #   if char =~ /[a-z]/
  #     result << code[char]
  #   else
  #     result << char
  #   end
  # end
  
  # result.join('')
  
end

p NumberEncoding("hello 45")