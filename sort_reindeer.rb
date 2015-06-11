def sort_reindeer reindeer_names
  
  reindeer_names.sort_by do |name|
    full = name.split(' ')
    full[-1]
    end
end

p sort_reindeer(["Dasher Tonoyan", 
    "Dancer Moore", 
    "Prancer Chua", 
    "Vixen Hall", 
    "Comet Karavani", 
    "Cupid Foroutan", 
    "Donder Jonker", 
    "Blitzen Claus"] )