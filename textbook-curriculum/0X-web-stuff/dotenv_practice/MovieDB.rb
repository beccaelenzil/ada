#MovieDB.rb
require 'dotenv'
require 'httparty'

#Tell dotenv to look for the .env file
Dotenv.load


class MovieInfo
    URL = 'https://api.themoviedb.org/3/search/movie'
    class MovieError < StandardError; 
    end
  
    attr_reader :overview, :release_date
  
    def initialize(overview, release_date)
      @overview = overview
      @release_date = release_date
    end
  
    def self.get_overview(movie)
        # Build and send the request
        response = HTTParty.get(URL, query: {
            query: movie,
            api_key: ENV['MOVIEDB_API_KEY']
        })
  
       puts response

        # Check for errors
        #if response['success'] == false
        #    puts "Something went wrong: #{response['status_message']}"
        #elsif response['results'].any?
        #    puts "Here is a summary of that movie:"
        #    puts response['results'].first['overview']
        #else
        #    puts "We couldn't find that movie :("
        #end

        if response.code != 200
            raise MovieError, "API call failed with code #{response.code} and reason '#{response['reason']}"
        end
  
        # Turn the raw JSON data into instances of this class
        return self.new(response["results"].first["overview"], response["results"].first["release_date"])
    end
  end

def main
    # get lat and long from user
    print "What movie would you like to look up: "
    movie = gets.chomp


    # get array of IssPass objects
    movie_info= MovieInfo.get_overview(movie)

    puts "The overview of #{movie} is: "
    puts movie_info.overview
end

# Run the program only if invoked directly from the command line
main if __FILE__ == $0