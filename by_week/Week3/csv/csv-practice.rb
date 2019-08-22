# csv-pratice.rb

require 'csv'
require 'awesome_print'

# CSV.open("planet_data.csv", 'a') do |csv|
#   csv << [5, "Jupiter", 318, 5.2]
# end


# CSV.open("planet_data.csv", 'r').each do |line|
#   p line
# end

# CSV.read("planet_data.csv").each do |line|
#   p line
# end

# csv_open = CSV.open("planet_data.csv", 'r')
# csv_read = CSV.read("planet_data.csv")

# p csv_open.class
# p csv_read.class

CSV.read('planet_data.csv', headers: true).each do |planet|
   p planet
end

csv_read_with_headers = CSV.read('planet_data.csv', headers: true).map(&:to_h)

ap csv_read_with_headers





