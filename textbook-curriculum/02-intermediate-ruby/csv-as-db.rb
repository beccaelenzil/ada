require 'csv'
require 'awesome_print'

=begin

planets = [
  [1, "Mercury", 0.055, 0.4],
  [2, "Venus", 0.815, 0.7],
  [3, "Earth", 1.0, 1.0],
  [4, "Mars", 0.107, 1.5]
]

CSV.open("planet_data.csv","w") do |file|
  planets.each do |planet|
    file << planet
  end
end


CSV.open("planet_data.csv",'a') do |csv|
  csv << [5, "Jupiter", 318, 5.2]
end


CSV.open("planet_data.csv",'r').each do |line|
  puts line
end


array_of_planet_data = CSV.read("planet_data.csv")
ap array_of_planet_data



## -- HEADERS --

CSV.read("planet_data.csv", headers: true).each do |planet|
  ap planet
end
=end

#--- Challenge Write a method to find all the planets with a smaller mass than earth (1.0).--

def similar_mass(planets_file_name)

  planets = CSV.read(planets_file_name, headers: true)

  # find mass of earth
  target_mass = nil
  planets.each do |planet|
    # post fix conditional
    target_mass ||= planet["mass"] if planet["name"] == "Earth"
    puts target_mass
    #if planet["name"] == "Earth"
    #  target_mass = planet["mass"]
    #end
  end

  # target_mass being overridden by nil ??

  # find planets with similar mass to earth
  similar_mass_array = []

  planets.each do |planet|
    # how do you do absolute value in ruby?
    # replace one with target_mass once that's working
    if planet["mass"].to_i - target_mass.to_i < 0.2 && planet["name"] != "Earth"
      similar_mass_array.push(planet["name"])
    end
  end
  return similar_mass_array

end

puts similar_mass("planet_data.csv")
