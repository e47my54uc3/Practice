def round_down(x)
    x.map! {|item| yield(item)}
end
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

p round_down(floats){|ele| ele.floor}




def new_each_with_index(array)
  0.upto(array.length - 1) do |index|
    yield(array[index], index)
  end
end


num_array = %w(one two three four)

new_each_with_index(num_array) do |e, i|
  p "The element at location #{i} is '#{e}'"
end


def new_each(array)
  0.upto(array.length - 1) do |index|
    yield( array[index] )
  end
end

new_each([1,2,3,4]) do |item|
  p "Whatever I want! Item: #{item}"
end
   # j




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


def my_uniq(array)
    result = array
    array.each_with_index do |orig, i|
      array.each_with_index do |dupe, j|
        if (j != i) && (dupe == orig)
            result.delete_at(j)
        end
      end
    end
    result
  end

p my_transpose([[0,1,2], [3,4,5], [6,7, 8]])


class Array
  def new_map!(&block)
    self.replace( self.map(&block) )
  end
end

p [1,2,3].new_map! { |num| num * 5 }

