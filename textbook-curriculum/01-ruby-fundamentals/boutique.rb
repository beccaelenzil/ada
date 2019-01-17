class Flower
  # generate reader methods for all instance variables
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # Constructor! This will be called automatically when you invoke Flower.new
  # -- use keyword arguements
  def initialize(name, size, color, quantity_available, bundles, max_stock, total_sold)
    @name = name
    @size = size
    @color = color
    @quantity_available = quantity_available
    @bundles = bundles
    @max_stock = max_stock
    @total_sold = total_sold
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
lily = Flower.new("Lily","medium","white", 91, 24, 120, 9200)
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
