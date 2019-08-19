require_relative "celsius"

tempC = 20
tempObject = Celsius.new(tempC)
tempF = tempObject.convert_to_fahrenheit

puts "#{tempC} degrees celcius is equation to #{tempF} degrees fahrenheit"
