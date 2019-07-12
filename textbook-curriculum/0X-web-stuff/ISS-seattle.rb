require 'httparty'
=begin
url = 'http://api.open-notify.org/iss-pass.json'
query_parameters = {
  lat: 47.6062,
  #lon: 122.3321
}
response = HTTParty.get(url, query: query_parameters)

times = response["response"]

if response["message"] == "failure"
  puts response.code
  puts response["reason"]
else
  times.each do |hash|
      puts Time.strptime(hash["duration"].to_s, '%s')
  end
end
=end

class IssPass
  URL = 'http://api.open-notify.org/iss-pass.json'
  class IssLocationError < StandardError; 
  end

  attr_reader :time, :duration

  def initialize(time, duration)
    @time = Time.strptime(time.to_s, '%s')
    @duration = duration
  end

  def self.get_passes(latitude, longtude)
    # Build and send the request
    query_parameters = {
      lat: latitude
      lon: longitude
    }
    response = HTTParty.get(URL, query: query_parameters)

    # Check for errors
    if response.code != 200 || response['message'] != 'success'
      raise IssLocationError, "API call failed with code #{response.code} and reason '#{response['reason']}"
    end

    # Turn the raw JSON data into instances of this class
    # map puts each new IssPass into an array
    passes = response['response'].map do |pass|
      self.new(pass['risetime'], pass['duration'])
    end

    return passes
  end
end

# Driver code
def main
  # get lat and long from user
  print "Latitude: "
  latitude = gets.chomp
  print "Longitude: "
  longitude = gets.chomp

  # get array of IssPass objects
  passes = IssPass.get_passes(latitude, longitude)

  puts "The next ISS flyover is:"
  puts passes.first.time
  puts "and will last #{passes.first.duration} seconds"
end

# Run the program only if invoked directly from the command line
main if __FILE__ == $0