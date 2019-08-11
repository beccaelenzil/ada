require 'terminal-table'

rows = []
rows << ['1st row left-side', '1st row middle', '1st row right-side']
rows << ['2nd row left-side', '2nd row middle', '2nd row right-side']
rows << ['3rd row left-side', '3rd row middle', '3rd row right-side']


# table = Terminal::Table.new do |t|
#   t << rows[0]
#   t << :separator
#   t.add_row rows[1]
#   t.add_separator
#   t.add_row rows[2]
# end

# puts table

table = Terminal::Table.new do |t|
  rows.each do |row|
    t << row
  end
  t.style = {:all_separators => true}
end

puts table
#puts table.class
#puts Terminal.class