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

email = /[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+/
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
=end

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
