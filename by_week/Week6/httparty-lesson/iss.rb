#url = "http://api.open-notify.org/iss-pass.json?lat=47.6062&lon=122.3321"
#response = HTTParty.get(url)
require 'httparty'
require 'time'

url = "http://api.open-notify.org/iss-pass.json"
query_parameters = {
  lat: 47.6062,
  lon: 122.3321
}
response = HTTParty.get(url, query: query_parameters)

if response.code == 200
  response["response"].each do |time_hash|
    risetime = time_hash["risetime"]
    puts Time.strptime(risetime.to_s, '%s')
  end
else
  puts "Failed with code: #{response.code}. The reason is #{response["reason"]}"
end

