# how we've done it so far
  num = rand(11)
  if num == 10
    puts "It's 10!"
  else
    puts "It's not 10!"
  end

# same code using a ternary instead
# condition ? eval_true : eval_false
puts num == 10 ? "It's 10!" : "It's not 10!"

# no ternary :(
  def avg_score(scores)
    if scores.length > 0
      scores.sum / scores.length
    else
      0
    end
  end

  # with a ternary!
  def avg_score(scores)
    # condition ? eval_true : eval_false
    scores.length > 0 ? scores.inject(0, :+) / scores.length : 0
  end

# ---postfix conditionals
argument = nil

#if argument.nil?
#    raise ArgumentError
#end
#postfix conditional, reads really well:

#raise ArgumentError if argument.nil?

# compound operators

   # with a truthy existing value
  existing_value = "elephant"
  existing_value ||= "hotdog"
  existing_value.inspect #=> "elephant"
  # with a falsey existing value
  existing_value = nil
  existing_value ||= "hotdog"
  existing_value.inspect # => "hotdog"
  # with falsey values everywhere
  existing_value = nil
  existing_value ||= false
  existing_value.inspect #=> "false"
  existing_value ||= nil
  existing_value.inspect #=> "nil"

  # with two truthy values
  existing_value = "elephant"
  existing_value &&= "hotdog"
  existing_value.inspect #=> "hotdog"
  # with a falsey existing value and a truthy assignment value
  existing_value = nil
  existing_value &&= "hotdog"
  existing_value.inspect #=> "nil"
  # with a truthy existing value and a falsey assignment value
  existing_value = "elephant"
  existing_value &&= nil
  existing_value.inspect #=> "nil"
