def menu_func()
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

    # 1. add 2 items
    menu << {
                name: 'radishes',
                price: 4.00,
                allergens: []
            }

    menu << {
                name: 'butter noodles',
                price: 6.25,
                allergens: ['gluten', 'dairy']
            }

    # 2. find the average price
    total_price = 0
    menu.each do |item|
        total_price += item[:price]
    end

    average_price = total_price/menu.length

    # 3 array of allergens
    allergens = []
    menu.each do |item|
        item[:allergens].each do |allergen|
            unless allergens.include? allergen
                allergens << allergen
            end
        end
    end

    puts "Average Price: #{average_price}"
    puts "Allergens: #{allergens}"

    puts "What meal do you want to know the price of"
    name = gets.chomp

    found = 0
    menu.each do |item|
        if item[:name] == name
            puts "The price of #{name} is: #{item[:price]}."
            found = 1
        end
    end

    if found == 0
        puts "We do not have #{name} on the menu."
    end
end