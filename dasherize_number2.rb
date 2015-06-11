def dasherize_number(number)

  digits = number.to_s.split('')

  result = []
  digits.each_with_index do |odd_check, i|
    if odd_check.to_i.odd? 
      result << odd_check << '-'
    elsif odd_check.to_i.even? && digits[i + 1].to_i.odd?
      result << odd_check << '-'
    else
      result << odd_check
    end
  end

  result.delete(result[-1]) if result[-1] == '-'
  result.join('')

end

p dasherize_number(30334)



def dasherize_number(number)

  stringified = number.to_s
  digits = stringified.split('')
  
  result = ""

  first_num = digits.first
  if first_num.to_i.odd?
    first_num = first_num + '-'
  end
  

  digits[1..-1].map.with_index do |x,i|
    if  ((x.to_i).odd? || x[i - 1].to_i.odd?) && (i != -1)
      result +=  ('-' + x)
    else
      result += x
    end
  end
    

result = first_num + result 
  result.gsub('--', '-')
end

def dasherize_number(num)
  
  num_arry = num.to_s.chars
   dashed = num_arry[0..-1].map do |int_check|
    int_check.to_i.odd?  ? ("-" + "#{int_check}" + "-") : "#{int_check}"
  end.join('')

  
    
  if dashed[0].include? ('-')
    dashed.slice!(0)
  end
  if dashed[-1].include? ('-')
    dashed.slice!(-1)
  end
  if dashed.include? ('--')
    dashed.gsub!('--', '-')
  end
  
  return dashed
  
  
end
