def english_number number

    if number < 0 #No negative nubmers.
      return "Please enter a number that isn\'t negative"
    end
    if number == 0
      return 'zero'
    end

    num_string = ''

    ones_place = ['one', 'two', 'three', 'four', 
      'five', 'six', 'seven', 'eight', 'nine']

    tens_place = ['ten', 'twenty', 'thirty', 'forty',
      'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
    ]

    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen',
      'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    #"left" is how much of the number we still have to write out
    #"write" is the part we are writing out right now.


    left = number
    write = left/100 #How many hundreds left?
    left = left - write*100 #Subtract off those hundreds.


    if write > 0
      #Now here's the recursion

      hunderds = english_number(write)
      num_string = num_string + hunderds + 'hundred'

      if left > 0
        num_string = num_string + ' ' #So we don't write 'twohundredfiftyone'
      end
    end

    write = left/10 #How many tens left?
    left = left - write*10 #Subtract off those tens.

    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left - 1]
        left = 0
      else
        num_string = num_string + tens_place[write - 1]
      end

      if left > 0
        num_string = num_string + '-' #So we don't write 'sixtyfour'
      end
    end

    write = left #How many ones left to write out?
    left = 0

    if write > 0
      num_string = num_string + ones_place[write - 1] + ' '
    end
    num_string
end

p english_number(3221)