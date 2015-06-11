foo = 'abacab'
letters = foo.chars.group_by{ |c| c }

p letters




# used_most = letters.sort_by{ |k, v| [k, v.size] }.last

# p used_most