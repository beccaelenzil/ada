menu = [
  {
    name: 'beet salad',
    price: 6.75,
    allergens: ['nuts']
  },
  {
    name: 'quiche',
    price: 10.00,
    allergens: ['gluten', 'dairy']
  },
  {
    name: 'molten chocolate cake',
    price: 8.50,
    allergens: []
  }
]

# add two more menu items
menu.push({:name=>'shepards pie', :price=>15.00, :allergens=>['dairy']})
menu.push({:name=>'coffee', :price=>2.00, :allergens=>[]})

# find the average cost
total_cost = 0
menu.each do |item|
  total_cost += item[:price]
end

average_cost = total_cost/menu.length
puts "average cost: #{average_cost}"


# list the allergens
allergens = []
menu.each do |item|
  item_allergens = item[:allergens]

  # if there are multiple allergens for a menu item
  if item_allergens.length > 1
    item_allergens.each do |allergen|
      if allergens.include?(allergen) == false
        allergens.push(allergen)
      end
    end

  # if there is one allergen for a menu item
  else
      if (item_allergens.length) != 0 && (allergens.include?(item_allergens[0]) == false)
        allergens.push(item_allergens[0])
      end
  end
end

puts "allergens: #{allergens}"


# tell the customer the cost of the item they chose
puts "These are the available meals: "
meal_names = []
menu.each do |item|
  puts item[:name]
  meal_names.push(item[:name])
end
puts "What would you like? "
meal = gets.chomp


if meal_names.include?(meal)
  menu.each do |item|
    if item[:name] == meal
      puts "That will cost #{item[:price].to_s} dollars"
    end
  end
else
  puts "We don't offer that item"
end
