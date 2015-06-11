def mineLocation(field)
  index = field.index { |item| item.index(1) }
  [index, field[index].index(1)]
end