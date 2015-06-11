class Array
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
end

