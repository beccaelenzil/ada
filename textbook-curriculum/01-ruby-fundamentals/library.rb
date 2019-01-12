
#Create a new ruby file
#Make a class for a library book
#Have your Book set the appropriate attributes on initialize
#Create the appropriate reader & writer methods for your class' attributes
#Have you tested yet? By now you should have made tests that:
#Can create new instances of your book class
#Pass in the appropriate attributes when creating the instance
#Can call the appropriate attributes on an instance
#Create a custom method for each action a book should be able to do. Make sure to test each method.


#--attributes--
#1. title
#2. author
#3. description
#4. call number
#5.year published
#6.number of copies available to check-out
#7. list of names of people who have checked-out this book
#8.list of names of people who currently have book checked-out

#--methods--
#1. be checked-out
#2. be checked-in
#3. add more copies

class Book
  # generate reader methods for all instance variables
  attr_accessor :title, :author, :description, :call_num, :year_published, :checked_out_by, :checked_out_by_currently, :copies_available

  # Constructor! This will be called automatically when you invoke Book.new
  def initialize(title, author, description, call_num, year_published)
    @title = title
    @author = author
    @description = description
    @call_num = call_num,
    @year_published = year_published,
    @copies_available = 3,
    @checked_out_by_currently = []
    @checked_out_by = []
  end

  # check-out --> add name from checked_out_by_currently array and subtract 1 from the number available
  def checkout(name)
    if @checked_out_by.include?(name) == false
      @checked_out_by << name
    end
    @checked_out_by_currently << name
    @copies_available -= 1
  end

  # check-in --> remove name from checked_out_by_currently array and add one to the number available
  def checkin(name)
    @checked_out_by_currently.delete(name)
    @copies_available += 1
  end

  # add coppis
  def add_copies(num)
    @copies_available += num
  end
end

sorcers_stone = Book.new({
  title: "Harry Potter and the Sorcer's Stone",
  author: "J. K. Rowling",
  description: "Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School for Witchcraft and Wizardry.",
  call_num: "823.914R797",
  year_published: 1998,
  copies_available: 3,
  checked_out_by: []
  })

puts sorcers_stone.title
# will output "Harry Potter and the Sorcer's Stone" in terminal

sorcers_stone.checkout("Dee")
sorcers_stone.checkout("Cedrick")

puts sorcers_stone.checked_out_by
# will output "Dee" and "Cedrick" to the terminal

puts sorcers_stone.copies_available
# will output "1" to the terminal

sorcers_stone.add_copies(3)
puts sorcers_stone.copies_available
# will output "4" to the terminal

sorcers_stone.checkin("Cedrick")
puts sorcers_stone.checked_out_by
# will output "Dee"

puts sorcers_stone.copies_available
# will output "5"
