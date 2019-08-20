require_relative 'user'

# Create an instance of the class User
# ada = User.new
# ada.name = "Ada Lovelace"
# ada.email = "ada@adadev.org"

# puts ada.email
# puts ada.summary

# becca = User.new
# becca.name = "Becca Elenzil" 
# becca.email = "becca@adadev.org"


# puts becca.summary
def main
  ada = User.new("Ada Lovelace", "ada@adadev.org")
  puts ada.summary

  ada.name = "Becca"
  puts ada.summary
end

main