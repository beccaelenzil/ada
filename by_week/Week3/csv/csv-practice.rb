# csv-pratice.rb

require 'csv'
require 'awesome_print'

planet_array_of_hashes = CSV.read('planet_data.csv', headers: true)

puts planet_array_of_hashes.class

smaller_than_earth = []
planet_array_of_hashes.each do |planet_hash|
  if planet_hash["mass"].to_f < 1.0
    smaller_than_earth << planet_hash["name"]
  end
end

p smaller_than_earth

