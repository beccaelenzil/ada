class Product
  def initialize(name, quantity_in_stock)
    @name = name
    @quantity_in_stock = quantity_in_stock
    @quantity_sold = 0
  end

  def name
    return @name
  end

  def name=(value)
    @name = value
  end

  def quantity_in_stock
    return @quantity_in_stock
  end

  def quantity_in_stock=(value)
    @quantity_in_stock = value
  end

  def quantity_sold
    return @quantity_sold
  end

  def available?
    return quantity_in_stock > 0
  end

  def sell(amount)
    @quantity_in_stock -= amount
    @quantity_sold += amount
  end
end