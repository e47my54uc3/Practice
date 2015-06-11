def cooking_time(eggs)

  
  left_over = (eggs % 8)

  extra_minutes = left_over * 5

  default = 0

  default + extra_minutes

end


p cooking_time(5)


def cooking_time(eggs)
    (eggs%8).zero? ? eggs/8 * 5 : (eggs/8)*5 + 5
end

def cooking_time(eggs)
  (eggs/8.0).ceil * 5
end