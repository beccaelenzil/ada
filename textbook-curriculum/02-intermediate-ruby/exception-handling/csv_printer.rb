# csv_printer.rb
require 'csv'

puts "hi"

while true
  puts "What file would you like to print?"
  filename = gets.chomp

  begin
    CSV.read(filename).each do |line|
      puts line.join(",")
    end

  rescue SystemCallError => exception
    puts "Could not open file: #{exception.message}"

    puts "Would you like to go again?"
    break if gets.chomp != "yes"
  end
end
