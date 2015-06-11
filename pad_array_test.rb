def pad!(array, min_size, value = nil) #destructive
 
  if array.length <= min_size
    return array
  else
    until array.length == min_size
      array << value
    end
    array
  end
end
