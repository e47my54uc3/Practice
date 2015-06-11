def Division(num1,num2)
gcf = 1
    if num1 >= num2
      i = num2
    else
      i = num1
    end

  while i > 0
    if (num1 % i == 0) && (num2 % i == 0)
      return i
    end
    i -= 1
  end
gcf
end