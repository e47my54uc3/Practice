def combine_arrays(arr1, arr2)
  require 'set'
   arr =  (arr1 | arr2)


  sorted = false
  until sorted
    sorted = true
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        sorted = false
      end
    end
  end
  arr

end

p combine_arrays([1,3,5], [2,4,6] )