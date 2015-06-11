def arrayaddition(arr)

  target = arr.sort.last
  remaining = arr.reject {|x| x == target}
  n = 0
  until n == remaining.length
  coms = remaining.combination(n).to_a
    coms.each{|each_com| return true if (each_com.reduce(:+) == target) }
  n += 1
  end
  false
end


p arrayaddition([3,4,-1,8,12])
