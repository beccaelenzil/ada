
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

puts "\n Welcome to my MadLib program. Please enter in some information below: \n"

print "name: "
name = gets.chomp
print "adjective: "
adjective1 = gets.chomp
print "noun: "
noun1 = gets.chomp
print "adjective: "
adjective2 = gets.chomp
print "food (plural): "
food = gets.chomp
print "noun (plural): "
noun2 = gets.chomp
print "verb ending in -ed: "
verb = gets.chomp
print "noun: "
noun3 = gets.chomp


puts "\n HERE'S YOUR MADLIB.......\n
Come on over to #{name} Pizza Parlor where you can enjoy your favorite #{adjective1}-dish pizza`s.
You can try our famous #{noun1}-lovers pizza,
or select from our list of #{adjective2} toppings,
including delicious #{food}, #{noun2}, and many more.
Our crusts are hand-#{verb} and basted in #{noun3} to make
them seem more Hand-made.\n"
