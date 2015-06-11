#Initalize Towers
tower_1 = [1, 5, 3]
tower_2 = [8, 2]
tower_3 = [7, 6, 4]

#Initalize completed tower for comparsion
ordered_tower = [8, 7, 6, 5, 4, 3, 2, 1]

#Set up pairs for naming
#This is a hash of symbols and the tower arrays from above
towers = { tower_1: tower_1, tower_2: tower_2, tower_3: tower_3 }

#This is the same as the while loop but might be clearer
until (tower_1 == ordered_tower) || (tower_2 == ordered_tower) || (tower_3 == ordered_tower)
   #Print using string interpolation
   print "tower_1 #{tower_1}"
   print "tower_2 #{tower_2}"
   print "tower_3 #{tower_3}"

   puts "Which tower would you like to select?"
   #changing the name to make it clear
   tower_input = gets.chomp.downcase

   #Take the input and look up the tower
   tower_source = towers[tower_input.to_sym]

   #As far as I'm aware we're only aloud to move the top disc?
   puts tower_source
   puts "Which disc would you like to move from this tower?"
   disc_input = gets.chomp

   print disc_input

   puts "Which tower would you like to move this disc?"
   target_input = gets.chomp.downcase
   tower_dest = towers[target_input.to_sym]

   #Take the element from the end of the target tower
   disc = tower_source.pop

   #Add the element we popped to the target tower
   tower_dest << disc

end

