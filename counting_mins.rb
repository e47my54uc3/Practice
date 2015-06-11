def CountingMinutes(str)

  parts = str.split('-')
  
  beg = parts[0]
  
  beg_hours = beg.scan(/\A\d+/).join.to_i
  beg_minutes = beg.scan(/(\d+)..\Z/).join.to_i
  
  beg.split('').each do |char|
    if char =~ /p/
      beg_hours += 12
    end
  end

  ending = parts[-1]

  ending_hours = ending.scan(/\A\d+/).join.to_i
  ending_minutes = ending.scan(/(\d+)..\Z/).join.to_i

  ending.split('').each do |char|
    if char =~ /p/
      ending_hours += 12
    end
  end

  min_conversion1 = (beg_hours * 60) + beg_minutes
  min_conversion2 = (ending_hours * 60) + ending_minutes

  time = min_conversion2 - min_conversion1
  if time < 0
    time += (24 * 60)
  end
  time
         
end

p CountingMinutes( "1:23am-1:08am")