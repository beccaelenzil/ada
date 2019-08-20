# main.rb

require_relative 'animal'

def main
  bear = Animal.new('bear', 10)
  cougar = Animal.new('cougar', 20)

  puts bear.summary
  bear.travel(5)
  puts bear.summary

  puts cougar.summary
  cougar.travel(5)
  puts cougar.summary
  #puts cougar.distance_from_home = 5
end

main