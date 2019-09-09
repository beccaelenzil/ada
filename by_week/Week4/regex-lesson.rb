#pattern = /ada/

# if pattern.match("ada lovelace")
#   puts "The string has ada in it"
# else
#   puts "I doesn't match"
# end

# pattern.match("ada lovelace") ?  "The String has ada in it!" :  "It doesn't match"

#p pattern =~ "ada"
#p pattern =~ "becca"

#pattern = /.+@.+\..+/
# pattern = /[A-Z]+[A-Z0-9]+@[A-Z]+\.[A-Z]+/i

# test_strings = ["dee@adadev.org.....", "adalovelace@gmail.com", 
#   "magictavern@puppies.supplies","dan@adadev.", 
#   "charles.com", "@adadev.org", "sarah@.org"]



# pattern = /[dsh]og/

pattern = /\$\d+\.\d\d/

test_strings = ['   $3.25', '$102.73', '$0.25', '$1000.73',
'$10.7', '$10.707']

test_strings.each do |item|
  puts pattern.match(item) ? "#{item} is valid" : "#{item} is not valid"
end