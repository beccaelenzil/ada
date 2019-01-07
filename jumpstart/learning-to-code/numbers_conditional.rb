# get integer from user
print "Enter a positive integer: "
integer1 = gets.chomp

# check if it's greater than 20
if integer1.to_i >= 20
  puts "#{integer1} is greather than or equal to 20."
end

print "Enter another positive integer: "
integer2 = gets.chomp
if integer2.to_i >= 20
  puts "#{integer2} is greather than or equal to 20."
end

print "Enter another positive integer: "
integer3 = gets.chomp
if integer3.to_i >= 20
  puts "#{integer3} is greather than or equal to 20."
end
