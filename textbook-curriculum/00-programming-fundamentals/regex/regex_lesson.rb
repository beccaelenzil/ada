=begin

#-- intro
pattern = /ada/

if pattern.match("ada lovelace")
  puts "The String has ada in it!"
else
  puts "It doesn't match"
end

puts pattern =~ "ada lovelace"
puts pattern =~ "learn at ada academy"

pattern1 = /[Aa]da/

puts pattern =~ "learn at ada academy" #nil
puts pattern1 =~ "learn at Ada academy"

#-- Character Sets

alphanumeric = /[A-Za-z0-9]/

puts alphanumeric =~ '...0123'

# --- The Wildcard and Quantifiers

email = /[^\?\!]+@[A-Za-z]+\.[A-Za-z]+/
test_emails = ["dee@adadev.org", "adalovelace@gmail.com", "magictavern@puppies.supplies", "dan@adadev.", "charles.com", "@adadev.org", "sarah@.org"]

for test in test_emails
  if email.match(test)
    puts "#{test} is valid"
  else
    puts "#{test} is NOT valid"
  end
end


#--- The NOT ^ Character
og_pattern = /[^b]og/

og_patterns = ['dog','sog','hog','bog']
for og in og_patterns
  if og_pattern.match(og)
    puts "yay #{og}"
  else
    puts "BOO #{og}"
  end
end

#--Escape Characters
# phone number (XXX) XXX-XXXX
number = /\(\d\d\d\) *\d\d\d\-\d\d\d/
puts number.match("(732)236-4756")

#--currency practice--#
money = /\$\d+\.\d\d$/
money_tests = ['$3.25','$102.73','$0.25','0.25','$0.2','$10.234']
for amount in money_tests
  if money.match(amount)
    puts "#{amount} is valid"
  else
    puts "#{amount} is NOT valid"
  end
end

# note, without the $ at the end of the string "$10.234" is valid


#--Start and End of a String
ada_pattern = /^ada/

adas = ["ada", "ada academy", "ada ", " ada", " ada ", " "]

for ada in adas
  if ada_pattern.match(ada)
    puts "#{ada} is valid"
  else
    puts "#{ada} is NOT valid"
  end
end

#---repetitions

#/[abc]{3}/

#A range of repetitions can also be repeated by using two parameters in the curly braces.
#For example /[abc]{3, 5}/ would allow the characters to repeat between 3 and 5 times.

#/[abc]{3, 5}/

#/a{2, 3}/

#--- capture groups

# However, you need to have the full ada in order to match, so adada does not match.
#puts(/(ada *)+/.match('adada'))

# ---
IPaddress_pattern = /^([0-9]{1,3}\.){3}\d{1,3}$/

IPaddresses = ['127.0.0.1', '206.190.36.45','127.0.0', '1273.0.0.1','127.0.0.1.1']

for item in IPaddresses
  if IPaddress_pattern.match(item)
    puts "#{item} is valid"
  else
    puts "#{item} is NOT valid"
  end
end

=end

=begin

# {}"Ada", "Ada Academy" or "Ada Developers Academy",
# but not "Ada Developers" by itself.
# Should be case-insensitive (so both "Ada" and "ada" are OK).

ada_pattern = /^[Aa]da(( [Dd]evelopers)? [Aa]cademy)?$/

# you can take or leave "Developers Academy"
# and within "Developers Academy," you can take or leave Developers


ada_patterns = ["ada", "Ada", "Ada academy",  "Ada Developers Academy", "Ada Developers"]

#for item in ada_patterns
ada_patterns.each do |item|
  # using a ternary
  p ada_pattern.match(item) ? "#{item} is valid" : "#{item} is NOT valid"
end

=end

=begin

email_regex = /.+@(.+\..+)/
match_result = "dan@adadev.org".match(email_regex)

#puts match_result[1]

emails = ['dan@adadev.org', 'dee@adadev.org', 'karib@gmail.com']

# Create a new hash where missing values are initialized to 0
domain_counts = Hash.new(0)

emails.each do |email|
  match_result = email.match(email_regex)
  next unless match_result # skip strings that don't match
  domain = match_result[1]
  domain_counts[domain] += 1
end

domain_counts.each do |domain, count|
  puts "#{domain}: #{count}"
end


# practice search

phone_numbers = [
  "(206) 555-1234",
  "425-555-9999",
  "406.555.1818",
  "+1 206 555 8888",
  "4255558872",
]


phone_regex = /^.*(\d{3}).*(\d{3}).*(\d{4})$/
phone_numbers.each do |item|
  phone_number = item.match(phone_regex)
  formatted_number = "("+phone_number[1]+") "+phone_number[2]+"-"+phone_number[3]
  puts  "(#{phone_number[1]}) #{phone_number[2]}-#{phone_number[3]}"
  puts formatted_number
end

=end
