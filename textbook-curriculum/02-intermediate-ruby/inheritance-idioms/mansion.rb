# mansion.rb
require_relative 'property'

class Mansion < Property
  # A mansion requires a big downpayment!
  def minimum_downpayment
    return 0.3
  end

  # The tax calculation is complex
  def annual_property_tax
    if asking_price > 1e7
      return asking_price * 0.3
    else
      return asking_price * 0.2
    end
  end
end
