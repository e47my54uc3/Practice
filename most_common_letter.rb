def most_common_letter(string)
  
  chars = string.split('')
  grouped = chars.group_by {|x| x}
  sorted = grouped.sort_by {|k,v| v.size}
  target = sorted.to_a.last
  [target.first , target.last.size]
  
  
end

p most_common_letter('summer')