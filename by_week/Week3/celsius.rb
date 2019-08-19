class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def convert_to_fahrenheit
    return (@temperature*9/5) + 32
  end

end