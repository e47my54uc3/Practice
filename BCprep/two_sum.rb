def two_sum(array)

  array.each_with_index do |elm, i|
    array.each_with_index do |sec_elm, j|
      if elm + sec_elm == 0
        return [i, j]
      end
    end
  end

return nil
end

p two_sum([-1, 2, 3, 1])