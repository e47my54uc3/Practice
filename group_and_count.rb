def group_and_count(input)
  return nil if input.nil? || input.empty?
  input.each_with_object(Hash.new(0)){ |k, h| h[k] += 1 }
end