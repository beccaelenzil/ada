=begin
You are assigned the task of creating a program that tracks flowers for a floral boutique.
The florists want a program that will keep track of their extensive assortment of flowers and
automatically order any that have low stock. Below is a sample of the information
that needs to be tracked by this program.

The program should also:
* Access all attributes
* Sell a flower
	- Update quantity available
	- Selling should update the total sold
* Restock a flower
	- Flowers can only be ordered in the quantities of their bundles.
  Reorder as much as possible before the quantity hits the max stock.
	- EX: If there are only 15 daisy's in stock, we want to restock to 300 as closely as possible,
  without going over.
  So, we need to order no more than 285 (300 - 15), but can only order in bundles of 50.
  How many times does 50 go into 285 (285 / 50)? 5!
  So our program needs to order 5 bundles of daisy's, which is 250 (5 x 50).
  That will update the quantity available to 265.
=end

class Flower
  # reader
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # initialize method
  def initialize(flower_dict)
    @name = flower_dict[:name]
    @size = flower_dict[:size]
    @color = flower_dict[:color]
    @quantity_available = flower_dict[:quantity_available]
    @bundles = flower_dict[:bundles]
    @max_stock = flower_dict[:max_stock]
    @total_sold = flower_dict[:total_sold]
  end
end



#---tests----
#initialize method - write 7 attributes

rose = Flower.new({
  name: "rose",
  size: "medium",
  color: "red",
  quantity_available: 144,
  bundles: 24,
  max_stock: 350,
  total_sold: 15042
  })

puts
puts "-----reader tests-----"
puts "name: #{rose.name}"
puts "size: #{rose.size}"
puts "color: #{rose.color}"
puts "quantity_available: #{rose.quantity_available}"
puts "bundles: #{rose.bundles}"
puts "max_stock: #{rose.max_stock}"
puts "total_sold: #{rose.total_sold} \n"

puts
puts "-----sell method tests-----"

puts
puts "-----restock method tests-----"
