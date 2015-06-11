def fibonacci(n)
  return n if n <= 1
  fibonacci(n -1) + fibonacci(n -2)
end

p fibonacci(3)

def fibo2(num)
  if num < 2
      num
  else
    fibo2(num-1) + fibo2(num-2)
  end
end
