food_items = ['veggie pizza', 'dumplings', 'meatball', 'spumoni']
greetings = ['hello', 'howdy', 'hey there']
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}
#
# adding spicy to each food item in an array using an each loop
=begin

spicy_food_items = []
food_items.each do |food|
  spicy_food = 'spicy ' + food
  #spicy_food_items << spicy_food
  spicy_food_items.push(spicy_food)
end


food_items = ['veggie pizza', 'dumplings', 'meatball', 'spumoni']
spicy_food_items = food_items.map do |food|
  'spicy ' + food
end

puts spicy_food_items


# upcase greetings using each loop


loud_greetings = []
greetings.each do |greeting|
  loud_greetings << greeting.upcase
end



# refactor using map

loud_greetings = greetings.map do |greeting|
  greeting.upcase
end
puts loud_greetings
# loud_greetings => ["HELLO", "HOWDY", "HEY THERE"]
=end

formatted_names = students.map do |student, name|
  {student => name}
end

puts formatted_names
