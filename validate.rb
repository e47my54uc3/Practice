def validate(n)
dupe_even = []
dupe_odd = []

manipulate = []

n.to_s.length.even? ? dupe_even = n.to_s.chars : dupe_odd = n.to_s.chars

dupe_even.each_with_index do |n, i|
  if (i + 1).odd?
   manipulate  << n.to_i * 2
  else
   manipulate << n.to_i
 end
end

dupe_odd.each_with_index do |n, i|
  if (i + 1).even?
   manipulate  << n.to_i * 2
  else
   manipulate << n.to_i
 end
end

   manipulate.map do |num|
    if num > 9
      num -= 9
    else
      num
    end
  end.reduce(:+) % 10 == 0
end
  



def validate(n)
  n.to_s.reverse.split('').map.with_index do |x,i| 
     x = x.to_i
     if i.odd? 
       x < 5 ? x * 2 : (x * 2).to_s.split("").inject(0){|sum,x| sum + x.to_i}
     else
       x
     end
  end.reduce(:+) % 10 == 0
end



def validate(n)
 n.to_s
   .split(//)
   .map(&:to_i)
   .reverse
   .map
   .with_index { |e,i| i.even? ? e:e*2  }
   .reverse
   .map { |x| x > 9 ? x-9 : x }
   .reduce(&:+) % 10 == 0
end