def solution(n)
  (1..n).to_a.to_s.scan(/\d/).map(&:to_i).reduce(:+)
end


def solution(n)
  (1..n).to_a.join.chars.map(&:to_i).reduce :+
end