=begin

1. Write a regex for a time string like, "13:00:25".
2. Write a regex for US Zip Code including the optional 4 digit segment. Examples include 75007-1234 and 98161
3. Write a regex for a date in the mm/dd/yyyy format.
4. Write a regex to validate a social security number.
5. Washington State Driver's license is formatted to start with 1-7 alphabetic (capitalized) characters followed by 5 characters which can be capital letters, numbers or "*". Create a regex to validate a Washington Driver's license.

=end

#1. Write a regex for a time string like, "13:00:25".
#pattern = /^\d\d:\d\d:\d\d$/
#strings = ["13:00:25", "13:00:25:25","131:00:25","130025"]

#2. Write a regex for US Zip Code including the optional 4 digit segment. Examples include 75007-1234 and 98161
#pattern = /^[\d]{5}(\-[\d]{4})?$/
#strings = ['98161','75007-1234', '9816111', '750071234', '75007-123']

#3.Write a regex for a date in the mm/dd/yyyy format.
#pattern = /^\d{2}\/\d{2}\/\d{4}$/
#strings = ['01/01/2019', '1/1/2019']
# => [ valid, not valid]

#5. Washington State Driver's license is formatted to start with 1-7 alphabetic #(capitalized) characters followed by 5 characters which can be capital letters, #numbers or "*". Create a regex to validate a Washington Driver's license.

pattern = /^[A-Z]{1,7}[A-Z0-9\*]{5}$/
strings = ['AAAA09*AA','AAAAAAAAAAAA', 'AAAAAAAAAAAAA']
# => [valid, valid, not valid]

strings.each do |element|
  puts pattern.match(element) ? "#{element} is valid \n " : "#{element} is NOT valid \n "
end
