 def OffLineMinimum(strArr)

  # if E, check arr 0..elm -1 and return smallest string.
  substring = []
  result = []
  strArr.each_with_index do |char, ind|
    substring << char
    if char =~ /E/
      result << substring.min
      substring.delete(substring.min)
    end
  end
  result
end


p OffLineMinimum(["4","E","1","E","2","E","3","E"])
