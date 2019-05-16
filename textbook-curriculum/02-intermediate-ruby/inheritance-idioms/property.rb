# property.rb
class Property
  attr_reader :address, :asking_price

  # Address has been simplified for the sake of brevity
  def initialize(address, asking_price)
    @address = address
    @asking_price = asking_price
  end

  # Minimum downpayment for most properties is 10%
  # Subclasses can override this if needed.
  def minimum_downpayment
    return 0.1
  end

  # Property tax is calculated differently for every
  # type of property, so there is no reasonable default
  # Instead we raise an exception, and expect any
  # subclass to override
  def annual_property_tax
    raise NotImplementedError, "TODO: Implement me in a subclass!"
  end

  # Complex method to compute the monthly payment.
  # Thank goodness someone else implemented this already!
  # We just have to fill in the details of minimum downpayment
  # and property tax calculations.
  def monthly_payment(loan_years, interest_rate)
    downpayment = minimum_downpayment * asking_price

    mortgage = (asking_price - downpayment) * ((1.0 + interest_rate) ** loan_years)

    annual_price = mortgage / loan_years
    annual_price += annual_property_tax

    return annual_price / 12
  end
end
