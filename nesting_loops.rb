alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

x1 = 0


while x1<26
    y1 = alpha[x1]
    x2 = 0
    while x2 < 26
        y2 = alpha[x2]
        x3 = 0
        while x3 < 26
            y3 = alpha[x3]
            puts y1 + y2 + y3
            x3 += 1
        end
        x2 += 1
    end
    x1 += 1
end

#This will make sure that the outer loop iterates while executing each inner loop