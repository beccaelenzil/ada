pattern = /ada/

if pattern.match("ada lovelace")
   puts "The String has ada in it!"
else
   puts "It doesn't match"
end

puts pattern.match("ada lovelace") ? "The String has ada in it!" : "It doesn't match"

