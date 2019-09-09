#doenv_practice.rb
require 'dotenv'

#Tell dotenv to look for the .env file
Dotenv.load

puts ENV['LUNCH']
#=> tofu scramble