def createOneRow(width):
  row = []
  (1..width).times do:
      row += [0]
  return row
end

puts createOneRow(5)