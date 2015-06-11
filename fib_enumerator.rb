fib = Enumerator.new do |yielder|
  a, b = 1,1
  
  loop do
    yielder.yield a
    a, b = b, a + b
  end
end