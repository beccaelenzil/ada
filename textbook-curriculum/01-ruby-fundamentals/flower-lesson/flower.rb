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

  #sell method
  # if num <= quantity_available, update total_sold and quantity_available by adding and subtracting num respectively
  # elsif num > quantity_available, tell the user, update total_sold by adding quantity_available, set quantity_available to 0
  # elsif num < 0, you cannot sell negative flowers
  def sell(num)
    if num < 0
      puts "You can't sell negative flowers"
    elsif num <= @quantity_available
      @quantity_available -= num
      @total_sold += num
    elsif num > @quantity_available
      puts "You don't have #{num} flowers. We will sell #{@quantity_available}"
      @total_sold += @quantity_available
      @quantity_available = 0
    end

  end

  #restock method
  # find the difference between the max_stock and quantity_available
  # integer division - divide the difference by the number in a bundle (@bundles),
  # --> store this value in number_of_bundles
  # multiply number of bundles by bundles to get number of flower_to_order
  # add flower_to_order to @quantity_available
  def restock
    difference = @max_stock - @quantity_available
    num_bundles = difference / @bundles
    flowers_to_order = num_bundles * @bundles
    @quantity_available += flowers_to_order
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
#reader
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
puts "quantity_available: #{rose.quantity_available}"
puts "total sold: #{rose.total_sold}"
puts "Sell 5"
rose.sell(5)
puts "quantity_available: #{rose.quantity_available}"
puts "total sold: #{rose.total_sold}"
puts "Sell 200"
rose.sell(200)
puts "quantity_available: #{rose.quantity_available}"
puts "total sold: #{rose.total_sold}"
puts "Sell -200"
rose.sell(-200)
puts "quantity_available: #{rose.quantity_available}"
puts "total sold: #{rose.total_sold}"

puts
puts "-----restock method tests-----"
puts "quantity_available: #{rose.quantity_available}"
puts "max stock: #{rose.max_stock}"
2.times do
  puts "call restock"
  rose.restock
  puts "quantity_available: #{rose.quantity_available}"
end

puts
