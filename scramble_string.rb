
def scramble_string(string, positions)
  new_string = []
  i = 0
  string_arry = string.chars
    # replace the original string index with cooresponding  desired array element 
    while i < string.length do
    ind = positions[i]
    new_string << string_arry[ind]
    i += 1
    end
   
  new_string.join('')
end


p scramble_string('some' , [3,1,2,0])