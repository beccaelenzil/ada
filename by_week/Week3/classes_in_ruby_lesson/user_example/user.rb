# user.rb

# define the class
class User

  # constructor
  def initialize(name, email)
    @name = name
    @email = email
  end

  # reader
  def name
    return @name
  end

  # writer
  def name=(new_name)
    @name = new_name
  end

  # reader
  def email
    return @email
  end

  # writer 
  def email=(new_email)
    @email = new_email
  end

  def summary
    return "#{@name} : #{@email}"
  end

end