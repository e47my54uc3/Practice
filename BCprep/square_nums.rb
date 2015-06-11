def squares_nums(num)
  count = 0


  (1).upto(num - 1) do |x|
    i = 0
    while i < num
      if i * i == x
        count += 1
      end
    i += 1
    end
  end

  count
end

# def square_nums(number)

# results = []

#   0.upto(number) do |x|
#     if squares_check(x) != nil
#       results << x
#     end
#   end
# squares_arry
# end

p squares_check(25)