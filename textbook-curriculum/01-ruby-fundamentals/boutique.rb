=begin

You are assigned the task of creating a program that tracks flowers for a floral boutique. The florists want a program that will keep track of their extensive assortment of flowers and automatically order any that have low stock. Below is a sample of the information that needs to be tracked by this program.

The program should also:
* Access all attributes
 * Sell a flower
 		- Update quantity available
 		- Selling should update the total sold
 * Restock a flower
		- Flowers can only be ordered in the quantities of their bundles. Reorder as much as possible before the quantity hits the max stock.
	- EX: If there are only 15 daisy's in stock, we want to restock to 300 as closely as possible, without going over. So, we need to order no more than 285 (300 - 15), but can only order in bundles of 50. How many times does 50 go into 285 (285 / 50)? 5! So our program needs to order 5 bundles of daisy's, which is 250 (5 x 50). That will update the quantity available to 265.
=end

class Flower
  # generate reader methods for all instance variables
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # Constructor! This will be called automatically when you invoke Flower.new
  # -- use keyword arguements
  def initialize(flower_hash)
    @name = flower_hash[:name]
    @size = flower_hash[:size]
    @color = flower_hash[:color]
    @quantity_available = flower_hash[:quantity_available]
    @bundles = flower_hash[:bundles]
    @max_stock = flower_hash[:max_stock]
    @total_sold = flower_hash[:total_sold]
  end

  # sell some number (num) of flowers
  def sell(num)
    if num <= @quantity_available
      @total_sold += num
      @quantity_available -= num
    else
      puts "You don't have enough flowers to sell that many."
    end
  end

  # restock up to max_stock
  def restock
    diff = @max_stock - @quantity_available
    if diff >= @bundles
      num_bundles = diff/(@bundles)
      num_flowers = num_bundles * @bundles
      @quantity_available += num_flowers
    else
      puts "It's not time to restock yet. "
      puts "You have #{@quantity_available}, and the max stock is #{@max_stock}"
      puts "You need to wait until you can order a bundle of #{@bundles}"
    end
  end
end


#--tests--
#attributes
puts "--Insantiate new Flower and view instance attributes--"

#lily = Flower.new("Lily","medium","white", 91, 24, 120, 9200)
lily = Flower.new({:name=>"Lily",:size=>"medium",:color=>"white", :quantity_available=>91, :bundles=>24, :max_stock=>120, :total_sold=>9200})
puts lily.name
puts lily.size
puts lily.color
puts lily.quantity_available
puts lily.bundles
puts lily.max_stock
puts lily.total_sold

# sell method
# sell more than quantity available
puts "--sell 500--"
lily.sell(500)
puts "quantitye available: #{lily.quantity_available}"
# sell an available quantity
puts "--sell 50--"
lily.sell(50)
puts "quantitye available: #{lily.quantity_available}"

#restock method
puts "--restock--"
lily.restock
puts "quantitye available: #{lily.quantity_available}"

#restock when not time to restock
puts "--restock--"
lily.restock
