def no_repeat?(year)
  digits =  year.to_s.chars
  digits.uniq == digits
end

def no_repeats(year_start, year_end)
  no_repeat_set = []
  year_start.upto(year_end) do |x|
    if no_repeat?(x)
      no_repeat_set << x
    end
  end
  return no_repeat_set
end

p no_repeats(1980, 1987)