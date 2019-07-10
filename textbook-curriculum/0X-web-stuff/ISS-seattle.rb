require 'httparty'

url = 'http://api.open-notify.org/iss-pass.json'
query_parameters = {
  lat: 47.6062,
  lon: 122.3321
}
response = HTTParty.get(url, query: query_parameters)

times = response["response"]

times.each do |hash|
    puts Time.strptime(hash["duration"].to_s, '%s')
end