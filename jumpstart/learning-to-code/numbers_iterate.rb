puts "Let's play a numbers game. How many numbers would you like to enter?"
n = gets.chomp
n = n.to_i

first_three = ['1st','2nd','3rd']

n.times do |i|
  if i < 3
    print "Enter the #{first_three[i]} positive integer: "
  else
    num = i+1
    print "Enter the #{num.to_s}th positive integer: "
  end
  integer = gets.chomp

  if integer.to_i % 3 == 0
    puts "\n #{integer} is divisible by 3 \n"
  else
    puts "\n #{integer} is not divisible by 3 \n"
  end
end
