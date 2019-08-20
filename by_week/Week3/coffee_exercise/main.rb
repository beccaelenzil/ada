require_relative "coffee_order"

my_coffee = CoffeeOrder.new(:drip, :tall, 2, true)

puts "The price when I type 15% is #{ my_coffee.calculate_price( 0.15 ) }"
puts "The price when I type 18% is #{ my_coffee.calculate_price( 0.18 ) }"
puts "The price when I type 20% is #{ my_coffee.calculate_price( 0.20 ) }"