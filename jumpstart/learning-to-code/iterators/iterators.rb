=begin
500.times do
  puts "hello!"
end
=end

i = 0
while i < 500
  puts "hello!"
  i+=1
end


#--times loops--

# n.times do --> do something n numbers of times

# i is the iteration variable
2.times do |i|
  puts i
end

#--range each--
# Inclusive range example
# note the ..
(5..9).each do |num|
  puts num
end

# --while and until-- check conditions
# until loop inverse of while, runs until condition is true
