def ArithGeoII(arr)

  arithmetic_cons = (arr[1] - arr[0])
  geom_cons = (arr[1] / arr[0])

  
  if (arr[0] + ((arr[1..-1].length) * arithmetic_cons) == arr.last)
    return "Arithmetic"
  elsif (arr[0] * ((arr[1..-1].length) ** geom_cons) == arr.last)
    return "Geometric"
  else
    return -1
  end
end

# tests either an arithmetic or geometric sequence