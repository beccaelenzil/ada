puts "Enter a positive integer: "
integer1 = gets.chomp
integer1  = integer1.to_i

int1_20 = (integer1 + 20).to_s

puts "Enter another positive integer: "
integer2 = gets.chomp
integer2  = integer2.to_i

int2_20 = (integer2 + 20).to_s

puts "Enter a third positive integer: "
integer3 = gets.chomp
integer3  = integer3.to_i

int3_20 = (integer3 + 20).to_s

puts "Twenty added to the numbers you entered gives us " +int1_20+", "+int2_20+" and "+int3_20+"."
