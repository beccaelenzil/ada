#post-response.rb

require "HTTParty"

response = HTTParty.post("https://petdibs.herokuapp.com/pets",
  headers: { 'Content-Type' => 'application/json' },
  body: {
    name: 'Kylo',
    human: 'Kari',
    species: 'Dog',
    age: 4
  }
)

puts response