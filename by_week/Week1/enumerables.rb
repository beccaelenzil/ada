# greetings = ["hello", "howdy", "hey there"]

# greetings.map! do |greeting|
#   greeting.upcase
# end

# p greetings


# -- reduce --

# create a string from the first characters of each item in an array of strings

fruits = %w[watermelon orange apple honeydew]
p fruits

fruits.min do |a, b|
  p "a: #{a}"
  p "b: #{b}"
  a.length <=> b.length
end

a_hash = [
  {name: "Becca", time_at_ada: "1 month"}, 
  {name: "Devin", time_at_ada: "1 year"}
]

a_hash.each do |instructor|
  puts "#{instructor[:name]} is an instructor who has been at ada for #{instructor[:time_at_ada]}"
end

# output =>
# "Becca is an instructor who has been at ada for 1 month"
# "Devin is an instructor who has been at ada for 1 year"