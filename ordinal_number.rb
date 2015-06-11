def number_to_ordinal(number)
  number = number.to_s
  case
    when number == '0' then number
    when number[-2] == '1' then "#{number}th"
    when number[-1] == '1' then "#{number}st"
    when number[-1] == '2' then "#{number}nd"
    when number[-1] == '3' then "#{number}rd"
    else "#{number}th"
  end
end