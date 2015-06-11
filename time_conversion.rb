def time_conversion(minutes)
  
  hours = (minutes / 60)

  minutes_rem = minutes - (60 * hours)
  if minutes_rem == 0
    minutes_rem = '00'
  end

  return "#{hours}:#{minutes_rem}"
  
end