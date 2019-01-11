puts "Welcome to Ada Developers Academy's Computer Candy Machine!
(All candy provided is virtual.)"

print " How much money do you have in dollars ($)? "
money = gets.chomp

print " \n"
if money.to_i < 5
  puts "$ #{money}, that's all?
  Well, lemme tell ya what we got here"
else
  puts "$ #{money}! That's a lot!
  Lemme tell ya what we got here"
end

print " \n"
puts "A) $1.65 Twix
B) $1.50 Chips
C) $1.75 Nutter Butter
D) $1.65 Peanut Butter Cup
E) $1.55 Juicy Fruit Gum \n
So What'll ya have? > "

choice = gets.chomp

prices = { "A" => 1.65, "B" => 1.50, "C" => 1.75, "D" => 1.65, "E" => 1.55}
snacks = { "A" => "Twix", "B" => "Chips", "C" => "Nutter Butter", "D" => "Peanut Butter Cup", "E" => "Juicy Fruit Gum"}

if money.to_i < prices[choice]
  print "Sorry, you don't have enough money for #{snacks[choice]}. \n"
else
  change = money.to_i - prices[choice]
  puts "Thanks for purchasing candy through us.
  Please take your candy, and your $#{change} change! \n"
end
