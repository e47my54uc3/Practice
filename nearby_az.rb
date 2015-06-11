def nearby_az(string)

  if (string =~ /.*(a..z).*/)
    return true
  elsif string =~ /.*(az).*/
    return true
  elsif string =~ /.*(a.z).*/
    return true
  else
    false
  end
end

p nearby_az('a')

def nearby_az(string)
  
  while string.count('az') > 1
    if (string.index('z') - string.index('a')) < 4
      return true
    else
      false
    end
  end
end

