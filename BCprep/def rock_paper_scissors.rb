def self.rock_paper_scissors
outcomes = ["Rock", "Paper", "Scissors"]
result = outcomes.shuffle.first

print "What do you choose? Rock, Paper, or Scissors?"

input = gets.chomp




  if result == "Rock" && input == "Paper"
    print "Paper, Lose"
  elsif result == "Rock" && input == "Rock"
    print "Rock, Draw"
  elsif result == "Rock" && input == "Scissors"
    print "Scissors, Win"
  elsif result == "Paper" && input == "Paper"
    print "Paper, Draw"
  elsif result == "Paper" && input == "Rock"
    print "Rock, Win"
  elsif result == "Paper" && input == "Scissors"
    print "Scissors, Lose"
  elsif result == "Scissors" && input == "Paper"
    print "Paper, Lose"
  elsif result == "Scissors" && input == "Rock"
    print "Rock, Win"
  elsif result == "Scissors" && input == "Scissors"
    print "Scissors, Draw"
  end
end

