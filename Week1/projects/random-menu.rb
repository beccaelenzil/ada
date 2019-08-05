require 'awesome_print'

# Hard coded

adjectives = ["hot", "cold", "warm", "spicy"]
styles = ["stir fried", "steamed", "baked", "toasted"]
foods = ["noodles", "candy", "tofu", "cereal"]

n = foods.length

# # Ask for user input

# adjectives = []
# styles = []
# foods = []

# puts "Let's build our word lists for our random menu."
# puts "How many menu items would you like?"
# n = gets.chomp
# n = n.to_i

# (1..n).each do |i|
#     puts "Collecting word set number #{i}:"
#     print "Give me an adjective: "
#     adjectives << gets.chomp
#     print "Give me a cooking style: "
#     styles << gets.chomp
#     print "Give me a food: "
#     foods << gets.chomp 
# end

menu = []


(1..n).each do |i|

    # random generation
    adjective = adjectives.sample
    style = styles.sample
    food = foods.sample
    menu_item = i.to_s + ". " + adjective + " " + style + " " + food

    # puts item in menu
    menu << menu_item

    # remove used items
    adjectives.delete(adjective)
    styles.delete(style)
    foods.delete(food)

    
end

ap menu
