def factorial(n)

  if n == 0
    return 1
  else
   (1..n).reduce(:*)
 end
end

p factorial(3)