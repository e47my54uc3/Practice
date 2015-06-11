def solution(full_text, search_text)
  full_text.scan(search_text).size
end

def solution(full_text, search_text)
  return 0 if search_text.empty?
  full_text.scan( Regexp.new(search_text)).size()
end

=begin 
Complete the solution so that it returns the number of times the search_text is found within the full_text.
=end