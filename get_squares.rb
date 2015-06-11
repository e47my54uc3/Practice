def get_squares(array)
  
  array = array.to_a.uniq.sort
  
  result = []
  
  array.each do |num|
    square_rt = (num ** (1.fdiv(2)))
    if (square_rt ** 2) == (square_rt.to_i ** 2)
      result << num
    end
  end
  result
  
end


def get_squares(array)
  array.select {|x| x % (Math.sqrt x) == 0}.sort.uniq
end

def get_squares(array)
  array.select{|x| x**0.5 % 1 == 0}.uniq.sort
end

p get_squares(1..16)