def morse_encode(str)
morse_hash = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

  build = ""
  str.each_char do |char|
    if char =~ /[\w]+/
      build  << morse_hash[char]
      build << " "
    else char =~/\s/
      build << "  "
    end
  end
  return build.chop #chop last element to return without the extra space
end

p morse_encode("cat in hat")