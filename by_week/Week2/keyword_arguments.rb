#def coffee_price(type, size)
#def coffee_price(type, size, extra_shots, cold)
#def coffee_price(type, size, extra_shots = 0, cold = false)
#def coffee_price(type, size, extra_shots:, cold:)
def coffee_price(type, size, extra_shots: 0, cold: false)
  # Find the base price for this drink
  case type
  when :drip
    price = 1.5
  when :latte
    price = 3.7
  when :cappuccino
    price = 3.2
  else
    puts "Invalid coffee type: #{type}"
    return
  end

  # Modify for size
  case size
  when :tall
    # No change
  when :grande
    price *= 1.3
  when :venti
    price *= 1.6
  else
    puts "Invalid size: #{size}"
    return
  end

  # extra shots
  price += extra_shots * 0.5

  # cold drink
  price += 1 if cold

  return price
end

# Price for a venti latte with 3 extra shots
puts coffee_price(:latte, :venti)


# Price for a venti latte with 3 extra shots
#puts coffee_price(:latte, :venti)



# # Price for a venti latte with 3 extra shots
# coffee_price(:latte, :venti, 3)

# # Price for a tall iced drip
# coffee_price(:drip, :tall, 0, true)



# price = coffee_price(:latte, :venti)
# puts "Your total for a venti latter is #{price} dollars"

# # Price a venti hot latte with 3 extra shots
# puts coffee_price(:latte, :venti, 3, false)

# # Price a tall iced drip
# puts coffee_price(:drip, :tall, 0, true)

