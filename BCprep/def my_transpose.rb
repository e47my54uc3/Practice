def my_transpose(array)
columns = []
l = array.length

  array.each_with_index do |row, i|
    n = 0
    while n < l
    columns << array[n][i]
    n += 1
    end
  end

  columns.each_slice(l).to_a

  # columns.join.scan(/\d{3}/).map do |components|
  # components.split('').map{|x| x.to_i}
  # end
end


p my_transpose([[0,1,2], [3,4,5], [6,7, 8]])