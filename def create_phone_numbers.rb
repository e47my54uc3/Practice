# def createPhoneNumber(numbers)
#   numbers.map(&:to_s).insert(0, '(').insert(4, ')').insert(5, ' ').insert(9, '-').join
# end

def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])