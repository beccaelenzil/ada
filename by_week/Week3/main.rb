require_relative 'superhero'

ms_marvel = Superhero.new("Ms. Marvel")

#puts "I have a new instance of Superhero, kept in a variable named ms_marvel, and its value is #{ms_marvel}"

#puts "Even on the next line of code, that hasn't changed! This instance of Superhero is still the same, because we have the same memory address: #{ms_marvel}"

ms_marvel = Superhero.new("Ms. Marvel")
batman = Superhero.new("Batman")
sailor_moon = Superhero.new("Sailor Moon")

ms_marvels_catchphrase = ms_marvel.say_cool_speech
batmans_catchphrase = batman.say_cool_speech
sailor_moons_catchphrase = sailor_moon.say_cool_speech

puts ms_marvels_catchphrase
puts batmans_catchphrase
puts sailor_moons_catchphrase