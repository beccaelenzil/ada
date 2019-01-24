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

  # sell method
  def sell(num)
    if num <= @quantity_available
      #@quantity_available = @quantity_available - num
      @quantity_available -= num
      @total_sold += num
    else
      puts "You don't have #{num} flowers. You only have #{@quantity_available}. We will sell them"
      @total_sold += @quantity_available
      @quantity_available = 0
    end
  end

  # restock method
  def restock
    # find difference between quantity_available and max_stock
    difference = @max_stock - @quantity_available
    if difference >= @bundles
    # determine the number of bundles
      num_bundles = difference / @bundles
    # determine the number of flowers
      num_flowers = @bundles * num_bundles
      @quantity_available += num_flowers
    else
      puts "You have too many flowers to restock at this time"
    end
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

puts "-----reader tests-----"
puts "name: #{rose.name}"
puts "size: #{rose.size}"
puts "color: #{rose.color}"
puts "quantity_available: #{rose.quantity_available}"
puts "bundles: #{rose.bundles}"
puts "max_stock: #{rose.max_stock}"
puts "total_sold: #{rose.total_sold}"

puts "-----sell method tests-----"
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"
puts "Sell 5"
rose.sell(5)
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"
puts "Try to sell 200"
rose.sell(200)
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"


puts "-----restock method tests-----"
puts "call restock"
rose.restock
puts "max_stock: #{rose.max_stock}"
puts "quantity_available: #{rose.quantity_available}"
puts "call restock"
rose.restock
puts "quantity_available: #{rose.quantity_available}"
