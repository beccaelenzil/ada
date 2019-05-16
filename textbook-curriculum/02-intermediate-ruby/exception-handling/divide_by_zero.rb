=begin

# divide_by_zero.rb
quotient = 5 / 0
puts quotient # this code will never run

=end

def make_toast(slices)
  if slices < 1
    raise ArgumentError.new("Can't make less than 1 slice of toast (asked for #{slices})")
  end
end

make_toast(0)
