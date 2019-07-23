########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
# Which layers are nested in each other?
# Which layers of data "have" within it a different layer?
# Which layers are "next" to each other?

# an array of hash
# each hash represents a different ride

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have

# an array of hash
# each hash represents a different ride

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"

require 'awesome_print'

rides = [
        {
            driver_id: "DR0004",
            date: "3rd Feb 2016",
            cost: 5,
            rider_id: "RD0022",
            rating: 5
        },
        {
            driver_id: "DR0001",
            date: "3rd Feb 2016",
            cost: 10,
            rider_id: "RD0003",
            rating: 3
        },
        {
            driver_id: "DR0002",
            date: "3rd Feb 2016",
            cost: 25,
            rider_id: "RD0073", 
            rating: 5
        },
        {
            driver_id: "DR0001",
            date: "3rd Feb 2016",
            cost: 30,
            rider_id: "RD0015",
            rating: 4
        },
        {
            driver_id: "DR0003",
            date: "4th Feb 2016",
            cost: 5,
            rider_id: "RD0066", 
            rating: 5
        },
        {
            driver_id: "DR0004",
            date: "4th Feb 2016",
            cost: 10,
            rider_id: "RD0022", 
            rating: 4
        },
        {
            driver_id: "DR0002",
            date: "4th Feb 2016",
            cost: 15,
            rider_id: "RD0013",
            rating: 1
        },
        {
            driver_id: "DR0003",
            date: "5th Feb 2016",
            cost: 50,
            rider_id: "RD0003", 
            rating: 2
        },
        {
            driver_id: "DR0002",
            date: "5th Feb 2016",
            cost: 35,
            rider_id: "RD0066",
            rating: 3
        },
        {
            driver_id: "DR0004",
            date: "5th Feb 2016",
            cost: 20,
            rider_id: "RD0073", 
            rating: 5
        },
        {
            driver_id: "DR0001",
            date: "5th Feb 2016",
            cost: 45,
            rider_id: "RD0003",
            rating: 2
        }
    ]

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

# Use an iteration blocks to print the following answers:
# - the number of rides each driver has given
# - the total amount of money each driver has made
# - the average rating for each driver
# - Which driver made the most money?
# - Which driver has the highest average rating?

# array of driver_ids
drivers = []

# array of hashes
# hash 1 --> key = driver_id, value = total_money
# hash 2 --> key = driver_id, value = total_money

num_rides = {}
total_money = {}
average_rating = {}

rides.each do |ride|
    if drivers.include?(ride[:driver_id]) == false
        num_rides[ride[:driver_id]] = 1
        total_money[ride[:driver_id]] = ride[:cost]
        average_rating[ride[:driver_id]] = ride[:rating]
        drivers << ride[:driver_id]
    else
        num_rides[ride[:driver_id]] += 1
        total_money[ride[:driver_id]] += ride[:cost]
        average_rating[ride[:driver_id]] += ride[:rating]
    end
end


max_money = 0
highest_rating = 0

richest_driver = 0
highest_rating_driver = 0

average_rating.each do |driver_id, rating|
    average_rating[driver_id] = rating.to_f/num_rides[driver_id]
    if total_money[driver_id] > max_money
        max_money = total_money[driver_id]
        richest_driver = driver_id
    end
end

average_rating.each do |driver_id, rating|
    if rating > highest_rating
        highest_rating_driver = driver_id
        highest_rating = rating
    end
end



ap "num rides:"
ap num_rides
ap "total money: "
ap total_money
ap "average rating: "
ap average_rating
ap "richest driver: #{richest_driver}"
ap "they made #{total_money[richest_driver]}"
ap "highest rating driver: #{highest_rating_driver}"
ap "they're average rating is' #{average_rating[highest_rating_driver]}"


