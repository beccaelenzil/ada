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

# Apartment is-a Property
# Apartment inherits from Property
class Apartment < Property
end

  