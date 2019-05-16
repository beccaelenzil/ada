# sample_exception.rb
begin #throw
  # Dividing by zero causes an error
  quotient = 5 / 0
  puts "Made it past the error"
rescue #catch
  quotient = nil
  puts "Rescued the error and set quotient to nil"
end

# resucing specific errors
=begin
begin
  # some code that will create an exception.

rescue ArgumentError
  # Code to recover from an ArgumentError

rescue ZeroDivisionError
  # Code to recover from a ZeroDivisionError

rescue
  # any other exceptions handled here

end

=end
