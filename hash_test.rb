h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
p h["a"] 
p h["c"] 

(h["c"]).upcase! #=> "GO FISH"
p h["d"] #=> "GO FISH" ------------------------ Very interesting.....
h.keys #=> ["a", "b"]


# This is because Hash.new(#)
# will construct a default that is shared by the entire hash. 

# In order to create a local hash do

h = Hash.new {|h, k| h[k] = "Go Fish"} 

 h["a"] = 100
h["b"] = 200
p h["a"] 
p h["c"] 

p (h["c"]).upcase!

p h["d"]

