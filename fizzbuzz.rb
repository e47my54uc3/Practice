def fizzbuzz(start, ending)
  if start <= ending
      range = ((start)..(ending)).to_a 
    new = []
      range.each do |x|
        if (x % 3 == 0) && (x % 5 != 0)
          new << "Fizz"
        elsif (x % 5 == 0) && (x % 3 != 0)
          new << "Buzz"
        elsif (x % 3 == 0) && (x % 5 == 0)
          new << "FizzBuzz"
        else
          new << x
        end
    end

    p new.join(' ')
  else
    "Please make sure to enter proper starting and ending values."
  end
end

p fizzbuzz(1, 50)

def fizzbuzz2(number)
    divisible_by3 = (number % 3 == 0)
    divisible_by5 = (number % 5 == 0)

    case
        when divisible_by3 && divisible_by5
            puts "FizzBuzz"
        when divisible_by3
            puts "Fizz"
        when divisible_by5
            puts "Buzz"
        else 
            puts number
    end
end