class Flower

  # generate reader methods for all instance variables
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # Constructor! This will be called automatically when you invoke Flower.new
  # -- use keyword arguements
  def initialize(
    name: "rose",
    size: "medium",
    color: "red",
    quantity_available: 0,
    bundles: 0,
    max_stock: 0,
    total_sold: 0
  )

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
    end
  end

  # restock up to max_stock
  def restock
    diff = @max_stock.to_i - @quantityle_available.to_i
    num_bundles = diff/@bundles.to_i
    num_flowers = num_bundles * @bundles.to_i
    @quantity_available += num_flowers
  end

end
