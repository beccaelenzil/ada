# main.rb

require_relative 'Condo'
require_relative 'Mansion'

properties = [
  Condo.new("123 2nd ave W #206, Seattle, WA", 825_000),
  Condo.new("307 E Madison #614, Seattle, WA", 614_000),
  Mansion.new("504 Brickman blvd, Seattle, WA", 1_650_000)
]

puts "We have many marvelous properties avaiable!"

puts "All figures assume a the minimum downpayment on a 30-year loan with a 4% interest rate"

properties.each do |property|
  # We don't care if the property is an apartment or a condo.
  # That's the power of polymorphism - so long as whatever
  # we've got implements the property interface, we can use it.
  puts
  puts property.address
  payment = property.monthly_payment(30, 0.04)
  puts "Estimated monthly payment: $#{payment.round(0)}"
end
