def weirdcase string
  string.split(' ').map do |word|
    word.chars.map.with_index {|c, i| i.even? ? c.capitalize : c.downcase }.join
  end.join(' ')
end

p weirdcase("hell sto")