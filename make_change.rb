def make_change(amount)
 h = amount / 50
 q = amount / 25
 d = (amount - (25 * q)) / 10
 n = (amount - ((25 * q) + (10 * d))) / 5
 p = (amount - (((25 * q) + (10 * d) + (5 * n))))
 
change = {
  Q: q,
  D: d,
  N: n,
  P: p
}
end


p make_change(3)


COINS = {
  H: 50,
  Q: 25,
  D: 10,
  N: 5,
  P: 1
}

def make_change(amount)
  COINS.inject(Hash.new(0)) do |hash,(k,v)|  
    until amount < v || amount == 0
      hash[k] += 1
      amount -= v
    end
    hash
  end
end


def make_change(amount)
  coins = { :H => 50, :Q => 25, :D => 10, :N => 5, :P => 1 }
  change = Hash.new(0)
  for k, v in coins
    while amount >= v
      change[k] += 1
      amount -= v
    end
  end
  change
end

def make_change(amount)
  return {} if amount <= 0
  
  coins = { :H => [50, 0], :Q => [25, 0], :D => [10, 0], :N => [5, 0], :P => [1, 0] }
  coins.each_key do |c| 
    value = coins[c][0]
    coins[c] = amount / value
    amount = amount % value
  end
  coins.reject { |k, v| v.zero? }
end