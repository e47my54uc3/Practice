def capitalize_words(string)
  string.downcase!
  words = string.split(' ')
  words.map! do |x|
    x.capitalize
  end
  words.join(' ')
end

p capitalize_words("this is a sentence")