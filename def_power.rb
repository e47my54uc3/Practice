def power(base, exponent)
return 1 if exponent == 0
  result = nil
  exponent.times{result = base * base}
  result
end


p power(2, 3)