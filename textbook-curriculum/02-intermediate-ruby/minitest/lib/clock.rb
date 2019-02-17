#clock.rb

def clock(hours, minutes,seconds)

  if hours > 24
    raise ArgumentError.new("hours field is too large")
  end

  if minutes > 60
    raise ArgumentError.new("minutes field is too large")
  end

  if seconds > 60
    raise ArgumentError.new("seconds field is too large")
  end


  times = [hours, minutes, seconds]
  string_times = []
  times.each do |time|
    if time < 0
      raise ArguementError.new("Hours, minutes, and seconds must be greater than or equal to 0")
    elsif time < 10
      time_s = "0"+time.to_s
    else
      time_s = time.to_s
    end
    string_times.push(time_s)
  end
  return string_times[0]+":"+string_times[1]+":"+string_times[2]

end

puts clock(8,10,12)

# continue with rake
