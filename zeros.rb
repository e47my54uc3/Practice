def zeros(n)

  number = (1..n).reduce(:*)
  
  number.to_s.scan(/0*$/).first.length
  
end


p zeros(19)