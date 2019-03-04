class Property
  attr_reader :id, :street, :city, :state, :zip

  def initialize(id, street, city, state, zip)
    @id = id
    @street = street
    @city = city
    @state = state
    @zip = zip
  end

  def mailing_address
    return "#{street}\n#{city}, #{state} #{zip}"
  end
end

class Apartment < Property
  attr_reader :unit

  def initialize(id, street, unit, city, state, zip)
    super(id, street, city, state, zip)
    @unit = unit
  end

  def mailing_address
    return "Unit: #{unit}\n#{super}"
  end
end
#Exercise With your seatmates create an Condo class. In addition to the same properties as Apartment, a Condo should also have price and square_feet properties and a price_per_square_foot method.
class Condo < Apartment
  attr_reader :price, :square_feet

  def initialize(id, street, unit, city, state, zip, price, square_feet)
    super(id, street, unit, city, state, zip)
    @price = price
    @square_feet = square_feet
  end

  def price_per_square_foot
    return @price/@square_feet
  end

end

dewey_st = Condo.new(123, "Dewey", "1", "Seattle", "WA", 98112, 870000, 1250)

puts dewey_st.price_per_square_foot
