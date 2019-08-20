require_relative 'product'

tonic = Product.new(
  "Dr. Flemington's cure-all tonic", 
  10
)

chair = Product.new(
  "office",
  10
)

tonic.sell(3)
puts "#{tonic.name}: #{tonic.quantity_sold} sold, #{tonic.quantity_in_stock} in stock"
tonic.sell(2)
puts "#{tonic.name}: #{tonic.quantity_sold} sold, #{tonic.quantity_in_stock} in stock"

chair.sell(2)
puts "#{chair.name}: #{chair.quantity_sold} sold, #{chair.quantity_in_stock} in stock"