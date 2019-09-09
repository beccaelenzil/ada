# # 1. ** PRODUCING EXCEPTIONS ************

# quotient = 5/0
# puts quotient

# # 2. ** WHAT IS ArgumentError? *******************

def make_toast(slices)
  if slices < 1
    raise ArgumentError.new("Can't make less than 1 slice of toast")
  end
end

begin
  make_toast(0)
rescue ArgumentError => exception
  #puts "#{exception}"
  #puts "How's it going"
  a = 5
end

puts a

# # 3. ** HANDLING EXCEPTIONS *******************

# def divide(a,b)
#   return a/b
# end


# begin
#   quotient = divide(5)
#   puts "made it past the error"
# rescue ZeroDivisionError 
#   quotient = nil
#   puts "Can't divide by zero. Set quotient to nil"
# rescue ArgumentError => exception
#   quotient = nil
#   puts "Encountered error: #{exception}"
# end

# # 4. **comment out rescue clause
# # 5. ** add in specific errors seen below
# # 6. ** add "=> exception" after "rescue ArgumentError"

# #** RESCUING SPECIFIC EXCEPTIONS *****

# begin
#   quotient = divide(5)
#   puts "made is past the error"
# rescue ArgumentError
#   quotient = nil
#   puts "Invalid argument and set quotient to #{quotient}"
# rescue ZeroDivisionError
#   quotient = nil
#   puts "Attempted to divide by 0 and set quotient to #{quotient}"
# end

# #** add => exception to 


