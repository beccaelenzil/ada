
=begin
Sample Output:

Welcome to my MadLib program. Please enter in some information below:

name: Starr
adjective: huge
noun: tablecloth
adjective: dry
food (plural): tacos
noun (plural): packs
verb ending in -ed: ended
noun: jellyfish

HERE'S YOUR MADLIB.......

Come on over to Starr’s Pizza Parlor where you can enjoy your favorite huge-dish pizza`s.
You can try our famous tablecloth-lovers pizza,
or select from our list of dry toppings,
including delicious tacos, packs, and many more.
Our crusts are hand-ended and basted in jellyfish to make
them seem more Hand-made.
=end


puts "\n Welcome to my MadLib program. Please enter in some information below:"
print "\n"

# get input from the user
print "Last Name: "
last_name = gets.chomp
print "adjective: "
adjective1 = gets.chomp
print "adjective: "
adjective2 = gets.chomp
print "adjective: "
adjective3 = gets.chomp
print "food (plural): "
food = gets.chomp
print "dessert food: "
dessert = gets.chomp
print "clothing item: "
clothing = gets.chomp
print "adverb: "
adverb = gets.chomp
print "movie name: "
movie = gets.chomp

# print HERE'S YOUR MADLIB with a line space before and after
print "\n"
puts " HERE'S YOUR MADLIB......."
print "\n"

# print complete madlib
puts "Welcome to the  #{last_name.capitalize}'s house!
There's no power, but there's lots of #{adjective1} stuffed animals.
If you ask nicely, the #{adjective2} Viva #{last_name} will do a performance for you.
After the performance, you can eat #{adjective3.upcase} #{food} for dinner.
For dessert, there will be lots of #{dessert}.
If you get into your #{clothing} #{adverb}, we may even watch #{movie.capitalize}.\n"
