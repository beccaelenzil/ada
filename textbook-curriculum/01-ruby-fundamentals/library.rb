
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
  # Constructor! This will be called automatically when you invoke Book.new
  def initialize(title, author, description, call_num, year_published)
    @name = name
    @author = author
    @description = description
    @call_num: call_num,
    @year_published: year_published,
    copies_available: 3,
    checked_out_by_currently: []
    checked_out_by: []
  end

  # check-out --> add name from checked_out_by_currently array and subtract 1 from the number available
  def checkout(name)
    if self.checked_out_by.include?(name) == false
      self.checked_out_by << name
    end
    self.checked_out_by_currently << name
    self.copies_available -= 1
  end

  # check-in --> remove name from checked_out_by_currently array and add one to the number available
  def checkin(name)
    self.checked_out_by_currently.delete(name)
    self.copies_available += 1
  end

  # add coppis
  def add_copies(num)
    self.copies_available += num
  end
end
