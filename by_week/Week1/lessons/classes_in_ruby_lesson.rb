class Product
  def name
    return "Dr. Flemington's cure-all tonic"
  end

  def quantity_in_stock
    return 10
  end

  def available?
    return quantity_in_stock > 0
  end
end

tonic = Product.new
puts "#{tonic.name}: #{tonic.available? ? 'currently' : 'not'} available"