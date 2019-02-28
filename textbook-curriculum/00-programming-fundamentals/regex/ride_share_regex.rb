# ride-share.txt
DRIVER_ID,DATE,COST,RIDER_ID,RATING
rideshare_data = [{}
 "driver_id": DR0004, 
 "date": 3rd Feb 2016, 
 "cost":5, 
 "rider_id": RD0022, 
 "rating":5},
 
{
 "driver_id": DR0001, 
 "date": 3rd Feb 2016, 
 "cost":10, 
 "rider_id": RD0003, 
 "rating":3},
 
{
 "driver_id": DR0002, 
 "date": 3rd Feb 2016, 
 "cost":25, 
 "rider_id": RD0073, 
 "rating":5},
 
 {
 "driver_id": DR0001, 
 "date": 3rd Feb 2016, 
 "cost":30, 
 "rider_id": RD0015, 
 "rating":4},
 
 {
 "driver_id": DR0003, 
 "date": 4th Feb 2016, 
 "cost":5, 
 "rider_id": RD0066, 
 "rating":5},
 
 {
 "driver_id": DR0004, 
 "date": 4th Feb 2016, 
 "cost":10, 
 "rider_id": RD0022, 
 "rating":4},
 
 {
 "driver_id": DR0002, 
 "date": 4th Feb 2016, 
 "cost":15, 
 "rider_id": RD0013, 
 "rating":1},
 
 {
 "driver_id": DR0003, 
 "date": 5th Feb 2016, 
 "cost":50, 
 "rider_id": RD0003, 
 "rating":2},
 
 {
 "driver_id": DR0002, 
 "date": 5th Feb 2016, 
 "cost":35, 
 "rider_id": RD0066, 
 "rating":3},
 
 {
 "driver_id": DR0004, 
 "date": 5th Feb 2016, 
 "cost":20, 
 "rider_id": RD0073, 
 "rating":5},
 
 {
 "driver_id": DR0001, 
 "date": 5th Feb 2016, 
 "cost":45, 
 "rider_id": RD0003, 
 "rating":2}
]

/^(DR000\d),(.*),(.*),(RD00\d\d),(\d)/

{\n "driver_id": $1, \n "date": $2, \n "cost":$3, \n "rider_id": $4, \n "rating":$5\n }