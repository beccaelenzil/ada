# condo.rb
require_relative 'property'

class Condo < Property
  # the default value for minimum_downpayment is fine,
  # so we don't override it here

  # However, we have to implement annual_property_tax
  def annual_property_tax
    return asking_price * 0.1
  end
end
